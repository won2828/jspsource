package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;


/**
 * Servlet implementation class BasicServlet
 */
@WebServlet("*.do")
public class BasicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 한글처리
		request.setCharacterEncoding("utf-8");

		String requestUri = request.getRequestURI(); // /login.do
		String contextPath = request.getContextPath();
		String cmd = requestUri.substring(contextPath.length()); // /login.do

		//  http://localhost:8090/list.do
		
		Action action = null;
		 

		ActionForward af = null;

		try {
			af = action.execute(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (af.isRedirect()) {
			response.sendRedirect(af.getPath());
		} else {
			RequestDispatcher rd = request.getRequestDispatcher(af.getPath());
			rd.forward(request, response);
		}
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
