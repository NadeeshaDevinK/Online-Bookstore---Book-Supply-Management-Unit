package com.orders;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteOrdersServlet
 */
@WebServlet("/DeleteOrdersServlet")
public class DeleteOrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String orderID = request.getParameter("orderID");
		boolean isTrue;
		
		isTrue = BookordersDBUtil.deleteRecord(orderID);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("AdminCreateSuuplyorder.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Orders> ordRecDetails = BookordersDBUtil.getOrderDetails(orderID);
			request.setAttribute("ordRecDetails", ordRecDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("AdminDeleteResultsPage.jsp");
			dispatcher.forward(request, response);
		}
	}

}
