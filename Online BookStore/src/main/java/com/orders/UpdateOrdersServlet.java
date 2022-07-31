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
 * Servlet implementation class UpdateOrdersServlet
 */
@WebServlet("/UpdateOrdersServlet")
public class UpdateOrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String orderID = request.getParameter("orderID");
		String supplyID = request.getParameter("supplyID");
		String orderTitle = request.getParameter("orderTitle");
		String supplierName = request.getParameter("supplierName");
		String orderDate = request.getParameter("orderDate");
		String bookName = request.getParameter("bookName");
		String noofBooks = request.getParameter("noofBooks");
		
		boolean isTrue;
		
		isTrue = BookordersDBUtil.updateorder(orderID, supplyID, orderTitle, supplierName, orderDate, bookName, noofBooks);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("AdminSearchSupplyOrders.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
		
	
	}

}
