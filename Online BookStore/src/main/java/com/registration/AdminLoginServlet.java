package com.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String Useremail = request.getParameter("userEmail");
		String Userpassword = request.getParameter("userPwd");
		boolean isTrue;
		
		isTrue = UserDBUtil.Adminvalidate(Useremail, Userpassword);
		
		if (isTrue == true) {
			List<Admin> adminDetails = UserDBUtil.validate(Useremail, Userpassword);
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AdminSupplyHomePage.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your UserEmail or UserPassword is Incorrect');");
			out.println("location='AdminLogin.jsp'");
			out.println("</script>");
		}
		
	}

}
