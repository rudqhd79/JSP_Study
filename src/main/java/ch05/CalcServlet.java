package ch05;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcServlet
 */
@WebServlet("/calc")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalcServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request : 클라이언트가 요청한(보낸) 내용들이 담겨있다
		//요청한 내용 받기
		//getParameter에는 name(이름)으로 구별한다
		int n1 = Integer.parseInt(request.getParameter("n1")); //getParameter에 들어가는 "n1"은 클라이언트가 보내는 input타입의 name이다
		//getParameter는 String형이기 때문에 int형변환 해준다
		int n2 = Integer.parseInt(request.getParameter("n2"));
		System.out.println("n1:  " + n1);
		System.out.println("n2:  " + n2);
		
		//연산자 받기 (문자열로 받아도 상관 없다)
		String op = request.getParameter("op");	//연산자(option에 있는 +, -, *, / 중 어떤게 들어올지 모른다)
		System.out.println("op:  " + op);
		
		long result = 0;	//연산의 결과를 담을 변수
		
		switch(op) {	//op를 넣어준 이유는 option을 감싸는 selct이기 때문이다
		case "+" : result = n1 + n2; break;
		case "-" : result = n1 - n2; break;
		case "*" : result = n1 * n2; break;
		case "/" : result = n1 / n2; break;
		}
		
		//response(응답)는 doGet에 있는 매개변수이다
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.append("<!doctype html><html><head><title>Calc Servlet</title></head><body>")
		.append("<h2>계산기 서블릿 결과</h2><hr>")
		.append("계산결과" + result + "</body></html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
