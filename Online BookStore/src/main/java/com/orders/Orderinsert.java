package com.orders;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ordersinsert
 */
@WebServlet("/Ordersinsert")
public class Orderinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Orderinsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String supplyID = request.getParameter("supplyID");
		String orderTitle = request.getParameter("orderTitle");
		String supplierName = request.getParameter("supplierName");
		String orderDate = request.getParameter("orderDate");
		String bookName = request.getParameter("bookName");
		String noofBooks = request.getParameter("noofBooks");
		
		boolean isTrue;
		
		isTrue = BookordersDBUtil.insertorder(supplyID, orderTitle, supplierName, orderDate, bookName, noofBooks);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("AdminCreateSuuplyorder.jsp");
			dis.forward(request, response);
			
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
