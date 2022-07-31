<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("orderID");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "onlinebookstore";
String userid = "root";
String password = "ndksliit";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<!-- Page Styles -->
<style>
        .pageHead {
            display: flex;
        }

        .left {
            flex: 25%;
            padding: 15px 0;
        }

        .center {
            flex: 50%;
            padding: 15px 0;
        }
        .right {
            flex: 25%;
            padding: 15px 0;
        }
        /*Report gen table Styles*/
		table {
		  border-collapse: collapse;
		  width: 100%;
		  
		}
		
		th, td {
		  text-align: center;
		  padding: 8px;
		}
		
		tr:nth-child(even) {background-color: #f2f2f2;}
		
		th {
		  background-color: #04AA6D;
		  color: white;
		}
		
		/*Report gen table Styles*/
        
</style>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta charset="ISO-8859-1">
<title>print report</title>
<!-- CSS Links -->
<link rel ="stylesheet" type="text/css" href="css/Styles.css">
<link rel ="stylesheet" type="text/css" href="css/repoform.css">
<!-- CSS Links -->
</head>
<body>
<!-- Page Header section -->
<div class="pageHead">
	<div class="center" align="center">
		<h1 style="font-family:Brush Script MT;"><span>Book</span>Topia</h1>
		<h2 style="font-family:Courier New;">Your One stop BookStore</h2>
	</div >
</div>
<div class="innerpageNav" id="ul2" style ="background-color: black;">
	<div class="left1" style="font-size: 25px;">
		<a href="AdminGenerateReport.jsp">
		<font  style="font-family:Brush Script MT ; text-align:center;"><span>Book</span>Topia</font>
		</a>
    </div>
	<div  style="text-align:center;" class="right1" id="li2 a">
		<a id="li2 a" style="font-family:sans-serif;">
                   <input type="button" id="li2" onclick="window.print();"  style="cursor:pointer;" value="Daily Report" >
        </a>
    </div>
</div>
<!-- /Page Header section -->
<!-- Page Navigation section -->
<!-- Page Body section -->
<!-- Report gen Table section -->
<div class="page-wrapper">
	<div class="container">
		<div style="overflow-x: auto;" id="center">
		  <table border="1">
		    <tr>
		      <th>Supply Order No</th>
		      <th>Supply Order Title</th>
		      <th>Publisher Name</th>
		      <th>Book Name</th>
		      <th>No of Books</th>
		      <th>Order Required Date</th>
		    </tr>
			    <%
				try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select * from bookorders";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
				%>
		      <tr>
		      <td><%=resultSet.getString("supplyID") %></td>
		      <td><%=resultSet.getString("orderTitle") %></td>
		      <td><%=resultSet.getString("supplierName") %></td>
		      <td><%=resultSet.getString("bookName") %></td>
		      <td><%=resultSet.getString("noofBooks") %></td>
		      <td><%=resultSet.getString("orderDate") %></td>
		      </tr>
		      <%
			}
				
			connection.close();
			
			} 
		    catch (Exception e) {
		    	System.out.println("Exception:"+e.getMessage());
				e.printStackTrace();
			}
			%>
		    
	     </table>
		</div>
		<!-- Date and Time -->
	<p style="font-family:Courier New;" id="demo"></p><br>
	<c:forEach var="Admin" items="${adminDetails}"> 
		<c:set var="Username" value="${Admin.username}"/>
		<p>Admin:</p>${Admin.username}
	</c:forEach>
	<script>
		const d = new Date();
		document.getElementById("demo").innerHTML = d;
	</script>
		<!-- Date and Time -->
	<!-- Report Gen Table section -->	
	</div>
</div>
<!-- Page Body section -->
</body>
</html>