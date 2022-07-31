package com.orders;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class BookordersDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//validate orders section
		public static List<Orders> validate(String supplyID) {
			
			ArrayList<Orders> ord = new ArrayList<>();
			
			//Validate Order section
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from bookorders where supplyID='"+supplyID+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int orderID = rs.getInt(1);
					String supplyrID = rs.getString(2);
					String orderTitle = rs.getString(3);
					String supplierName = rs.getString(4);
					String orderDate = rs.getString(5);
					String bookName = rs.getString(6);
					String noofBooks = rs.getString(7);
					
					Orders o = new Orders(orderID,supplyrID,orderTitle,supplierName,orderDate,bookName,noofBooks);
					ord.add(o);
					
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return ord;
			
		}
		//validate publishers section
		public static List<ordersup> validatename(String supplyID) {
			
			ArrayList<ordersup> sup = new ArrayList<>();
			
			//validate supplier name section
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from bookorders where supplyID='"+supplyID+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					
					String supplyrID = rs.getString(2);
					String orderTitle = rs.getString(3);
					String supplierName = rs.getString(4);
					String orderDate = rs.getString(5);
					String bookName = rs.getString(6);
					String noofBooks = rs.getString(7);
					
					ordersup N = new ordersup(supplyrID,orderTitle,supplierName,orderDate,bookName,noofBooks);
					sup.add(N);
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return sup;
		}
	
	
	
	
	
	//Insert orders section
		public static boolean insertorder(String supplyID, String orderTitle, String supplierName, String orderDate, String bookName, String noofBooks) {
			
			boolean isSuccess = false;
			
			
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "INSERT INTO bookorders values (0,'"+supplyID+"','"+orderTitle+"','"+supplierName+"','"+orderDate+"','"+bookName+"','"+noofBooks+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				} else {
					isSuccess = false;
				}
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			
			
			return isSuccess;
		}
	
	//Update orders section
		public static boolean updateorder(String orderID, String supplyID, String orderTitle, String supplierName, String orderDate, String bookName, String noofBooks) {
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "UPDATE bookorders set orderID='"+orderID+"',supplyID='"+supplyID+"',orderTitle='"+orderTitle+"',supplierName='"+supplierName+"',orderDate='"+orderDate+"',bookName='"+bookName+"',noofBooks='"+noofBooks+"'"
						+ "where orderID='"+orderID+"'";
				int rs = stmt.executeUpdate(sql);
				
				if (rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
	
	//Get Order Details
		public static List<Orders> getOrderDetails(String orderID) {
		    	
		    	int convertedID = Integer.parseInt(orderID);
		    	
		    	ArrayList<Orders> ord = new ArrayList<>();
		    	
		    	try {
		    		
		    		con = DBConnect.getConnection();
		    		stmt = con.createStatement();
		    		String sql = "select * from bookorders where orderID='"+convertedID+"'";
		    		rs = stmt.executeQuery(sql);
		    		
		    		while(rs.next()) {
		    			int orderIDr = rs.getInt(1);
		    			String supplyID = rs.getString(2);
		    			String supplyTitle = rs.getString(3);
		    			String supplier = rs.getString(4);
		    			String ordReqDte = rs.getString(5);
		    			String bookName = rs.getString(6);
		    			String noOfBooks = rs.getString(7);
		    			
		    			Orders c = new Orders(orderIDr,supplyID,supplyTitle,supplier,ordReqDte,bookName,noOfBooks);
		    			ord.add(c);
		    		}
		    		
		    	}
		    	catch(Exception e) {
		    		e.printStackTrace();
		    	}	
		    	return ord;	
		    }
	
	//Delete Data Section
		public static boolean deleteRecord(String orderID) {
			
			int convertID = Integer.parseInt(orderID);
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete from bookorders where orderID='"+convertID+"'";
				int rs = stmt.executeUpdate(sql);
				
				if (rs > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			
			
			return isSuccess;
		}

}
