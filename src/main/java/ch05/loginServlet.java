package ch05;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/log")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("ID");
		String pass = request.getParameter("PASS");
		System.out.println("ID:  " + id);
		System.out.println("PASS:  " + pass);
		
		if (id.equals("person") && pass.equals("1234")) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.append("<!doctype html><html><head><title>Calc Servlet</title></head><body>")
			.append("<h2>로그인 서블릿</h2><hr>")
			.append(id + "님 반갑습니다." + "</body></html>");
		} else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.append("<!doctype html><html><head><title>Calc Servlet</title></head><body>")
			.append("<h2>로그인 서블릿</h2><hr>")
			.append("로그인 실패" + "</body></html>");
		}
		
		
		//response(응답)는 doGet에 있는 매개변수이다
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
