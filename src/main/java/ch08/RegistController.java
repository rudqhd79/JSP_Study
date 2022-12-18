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
 * Servlet implementation class RegistController
 */
@WebServlet("/rc")
public class RegistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RegistCustomer customer = new RegistCustomer();

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		customer = new RegistCustomer();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistController() {
		super();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		String view = "";

		if (action == null) {
			getServletContext().getRequestDispatcher("/rc?action=list").forward(request, response);
		} else {
			switch (action) {
			case "list":
				view = list(request, response);
				break;
			case "info":
				view = info(request, response);
				break;
			case "info2":
				view = info2(request, response);
				break;
			case "confirm":
				view = confirm(request, response);
			}

			getServletContext().getRequestDispatcher("/ch08/" + view).forward(request, response);
		}
	}

	private String list(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Regist> clist = customer.findAll();
		request.setAttribute("regist", clist);
		return "registList.jsp";
	}

	private String info(HttpServletRequest request, HttpServletResponse response) {
		// find메소드 사용
		Regist regist = customer.find(request.getParameter("id"));
		// setAttribute는 key, value이다
		request.setAttribute("r", regist);
		return "registInfo.jsp";
	}
	
	private String info2(HttpServletRequest request, HttpServletResponse response) {
		// find메소드 사용
		Regist regist = customer.find(request.getParameter("id"));
		// setAttribute는 key, value이다
		request.setAttribute("r", regist);
		return "registInfo2.jsp";
	}

	private String confirm(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Regist> clist = customer.findAll();
		request.setAttribute("regist", clist);
		return "registConfirm.jsp";
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
