package com.registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//Admin login validation
	public static boolean Adminvalidate(String Useremail, String Userpassword) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from adminusers where Useremail='"+Useremail+"' and Userpassword='"+Userpassword+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//publisher login validation
	public static boolean Publishervalidate(String Publisheremail, String Publisherpassword) {
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from publisherusers where Publisheremail='"+Publisheremail+"' and Publisherpassword='"+Publisherpassword+"'";
				rs = stmt.executeQuery(sql);
				
				if (rs.next()) {
					isSuccess = true;
				} else {
					isSuccess = false;
				}
				
			} catch (Exception e){
				e.printStackTrace();
			}
			
			return isSuccess;
		}
	
	public static List<Admin> validate(String Useremail, String Userpassword) {
		
		ArrayList<Admin> admin = new ArrayList<>();
		
		//Create database connection
		String url = "jdbc:mysql://localhost:3306/onlinebookstore";
		String user = "root";
		String password = "ndksliit";
		
		//validate
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			String sql = "SELECT * from adminusers where Useremail='"+Useremail+"' and Userpassword='"+Userpassword+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int user_id = rs.getInt(1);
				String AdminUsername = rs.getString(2);
				String AdminUseremail = rs.getString(3);
				String AdminUserpassword = rs.getString(4);
				String AdminUsercontactno = rs.getString(5);
				
				Admin a = new Admin(user_id,AdminUsername,AdminUseremail,AdminUserpassword,AdminUsercontactno);
				admin.add(a);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return admin;
		
	}
	
	public static List<Publisher> validatePublisher(String Publisheremail, String Publisherpassword) {
			
			ArrayList<Publisher> publisher = new ArrayList<>();
			
			//Create database connection
			String url = "jdbc:mysql://localhost:3306/onlinebookstore";
			String user = "root";
			String password = "ndksliit";
			
			//validate
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection(url, user, password);
				Statement stmt = con.createStatement();
				String sql = "SELECT * from publisherusers where Publisheremail='"+Publisheremail+"' and Publisherpassword='"+Publisherpassword+"'";
				ResultSet rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int user_id = rs.getInt(1);
					String Publishername = rs.getString(2);
					String Publisheraddress = rs.getString(3);
					String Publishercompany = rs.getString(4);
					String PPublisheremail = rs.getString(5);
					String PPublisherpassword = rs.getString(6);
					String Publishercontactno = rs.getString(7);
					
					Publisher p = new Publisher(user_id,Publishername,Publisheraddress,Publishercompany,PPublisheremail,PPublisherpassword,Publishercontactno);
					publisher.add(p);
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return publisher;
			
		}
	

}
