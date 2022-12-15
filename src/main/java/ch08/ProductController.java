package ch08;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/pcontrol")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductService service = new ProductService();

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		service = new ProductService(); // 서블릿이 초기화 될 때 ProductService 객체를 생성
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductController() {
		super();
	}

	// 클라이언트에서 request가 오면 service가 실행된다
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action"); // action 파라미터의 값을 얻어온다
		String view = "";

		if (action == null) {
			getServletContext().getRequestDispatcher("/pcontrol?action=list").forward(request, response);
		} else {
			switch (action) {
			case "list":
				view = list(request, response);
				break;
			case "info":
				view = info(request, response);
				break;
			}

			getServletContext().getRequestDispatcher("/ch08/" + view).forward(request, response);
		}
	}

	// 상품 한가지의 정보만 가져오는 메소드
	private String info(HttpServletRequest request, HttpServletResponse response) {
		// find메소드 사용
		Product product = service.find(request.getParameter("id"));
		// setAttribute는 key, value이다
		request.setAttribute("p", product);
		return "productInfo.jsp";
	}

	// 모든 상품을 가져오는 메소드
	private String list(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Product> plist = service.findAll();
		request.setAttribute("products", plist);
		return "productList.jsp";
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
