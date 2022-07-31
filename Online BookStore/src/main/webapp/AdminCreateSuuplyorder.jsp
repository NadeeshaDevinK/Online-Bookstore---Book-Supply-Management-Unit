<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<!-- Page Header Styles -->
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
        
        
</style>
<!-- Page Header Styles -->
<!-- Font-Awesome Icon pack-->
<script>
function validateForm() {
  var supplyID=document.createRequests.supplyID.value;
  if (supplyID == null ||supplyID == "") {
    alert("'Supply Order No:' Field Must Be Filled Out");
    return false;
  }
  var orderTitle=document.createRequests.orderTitle.value;
  if (orderTitle == null ||orderTitle == "") {
	    alert("'Supply Order Title:' Field Must Be Filled Out");
	    return false;
	  }
}	
</script>
<meta charset="ISO-8859-1">
<title>Create Book Supply Order</title>
<!-- CSS Links -->
<link rel ="stylesheet" type="text/css" href="css/Styles.css">
<link rel ="stylesheet" type="text/css" href="css/Jobs & req.css">
<!-- CSS Links -->
</head>
<body>
<!-- Page Header section -->
<div class="pageHead">
	<div class="left">
		<img src = "images/logo.jpg" height="100px" width="150px" class="Logo" >
	</div>
	<div class="center" align="center">
		<h1 style="font-family:Brush Script MT;"><span>Book</span>Topia</h1>
		<h2 style="font-family:Courier New;">Your One stop BookStore</h2>
	</div >
	<div class="right">
	</div>
</div>
<!-- Page Header section -->
<!-- Page Navigation section -->
<div class="innerpageNav" id="ul2">
	<div class="left1" id="li2">
	<a href="AdminSupplyHomePage.jsp">
		<font  style="font-family:Brush Script MT ; text-align:center;"><span>Book</span>Topia</font>
		</a>
    </div>
	<div  style="text-align:center;" class="right1" id="li2">
		<a id="li2 a" style="font-family:sans-serif;">
                    Create New Supply Order
        </a>
    </div>
</div>

<!-- Page Navigation section -->
<!-- Page Body section -->

<div class="page-wrapper">
	<div class="container">
		<form action="insert" method="post" name="createRequests" onsubmit="return validateForm()">
		<fieldset > 
		<legend>Supply Request Details </legend>
		<!-- Supply order no -->
		<div class="row">
			<div class="col-25" id="center">
				<label for="supplyID">Supply Order No</label>
			</div>
			
			<div class="col-75" style="width: 25%;">
				<input type="text" id="supplyID" name="supplyID" maxlength="6" size="6" title="give a Supply Order No as SPxxxx or KPxxxx" placeholder="Enter a supply order number">
			</div>&nbsp;&nbsp;
			<div>&nbsp;&nbsp;&nbsp;Supplier order ID should be Ex: Senarathna - SPxxxx or Karunarathna - KPxxxx </div>
		</div>
		<br>
		<!-- Supply order no -->
		<!-- Supply order Title -->
		<div class="row">
			<div class="col-25" id="center">
				<label for="orderTitle">Supply Order Title</label> 
			</div>
			<div class="col-75">
				<input type="text" id="orderTitle" name="orderTitle" placeholder="Enter a supply order Title">
			</div>
		</div>
		<br>
		<!-- Supply order Title -->
		<!-- Supply Name -->
		<div class="row">
			<div class="col-25" id="center">
				<label for="supplierName">Publisher Name</label> 
			</div>
			<div class="col-75">
				<select id="supplierName" name="supplierName" Required>
				<option value="Senarathna">Senarathna Publishers</option>
				<option value="Karunarathna">Karunarathna Publishers</option>
				</select>
			</div>
		</div>
		<br>
		<!-- Supply Name -->
		<!-- OrderReqDate -->
		<div class="row">
			<div class="col-25" id="center">
				<label for="orderDate">Order Required Date</label> 
			</div>
			<div class="col-75" style="width:75%;">
				<input type="date" id="orderDate" name="orderDate" Required>
			</div>
		</div>
		<br>
		<!-- OrderReqDate -->
		</fieldset>
		<br>
		<!-- Book Details -->
		<fieldset > 
		<legend>Book Details</legend>
		<!-- Book Name -->
		<div class="row" >
			<div class="col-25" id="center">
				<label for="bookName">Book Name</label> 
			</div>
			<div class="col-75">
				<input type="text" id="bookName" name="bookName" Required>
			</div>
		<!-- Book Name -->
		</div>
		<!-- No of Books -->
		<br>
		<div class="row" >
			<div class="col-25" id="center">
				<label for="noofBooks">No of Books Ordered</label> 
			</div>
			<div class="col-75" style="width: 25%;">
				<select id="noofBooks" name="noofBooks" Required>
				<option value="100">100 Books</option>
				<option value="500">500 Books</option>
				<option value="1000">1000 Books</option>
				<option value="2000">2000 Books</option>
				<option value="5000">5000 Books</option>
				</select>
			</div>
		
		</div>
		</fieldset>
		<br>
		<!-- No of Books -->
		<!-- Book Details -->
		<!-- Submit button -->
		<div class="pageNav" >
			<div class="left" id="center">
				<input class="linkbutton" type="submit" name="submit" value="Place The Order" onclick="myFunction()">
			</div>
		<!-- Submit button -->
		<!-- Clear Button -->
			<div class="center2" id="center">
				<input class="linkbutton" type="reset" value="Clear All Feilds">
			</div>
		</div>
		<!-- Clear Button -->
		</form>
	</div>
</div>
<!-- Page Body section -->
<hr>
<!-- Footer -->
<div class="footer">
	
	<div class="footer-content">
		
		<div class="footer-section-about">
			
			<h1 style="font-family:Brush Script MT;"><span>Book</span>Topia</h1>
			
			<p>Experience online shopping in Sri Lanka with Upzing.com by purchasing genuine quality products 
			   showcased by verified sellers across the country that will ensure safe and swift deliveries of your orders.
			</p>
			
			<h3> Our Location </h3>
			<font size="3">No 220.<br> Malwaththa Rd, <br> Colombo 03 <br> E-Mail :- BookTopia@Gmail.com 
			
			</font>
			
			
			
			
			
			
		</div>	
			
		<div class="footer-section-links">
			<h2>Quick Links</h2>
			<br>
			<ul class="b">
				<a href="#"><li>Home</li></a>
				<a href="#"><li>About US</li></a>
				<a href="#"><li>Contact US</li></a>
				<a href="TermsConditions.jsp"><li>Terms & Conditions</li></a>
			</ul>
		</div>
		
		
		
		<div class="footer-section-contact-form">
			<h2>Contact Us</h2>
			
			<h3> Hotline : 011-289-566-1</h3>
		
			<div class="socials">
				<a href="#"><i class="fab fa-facebook"></i></a>
				<a href="#"><i class="fab fa-instagram"></i></a>
				<a href="#"><i class="fab fa-twitter"></i></a>
				<a href="#"><i class="fab fa-youtube"></i></a>
			</div>
			
			<form action="index.html" method"post">
			<input type="email" name="email" class="input" placeholder="Your email address...">
			<textarea name="Message" class="input" placeholder="Your message..."></textarea>
			
			<button type="submit" class="inputbutton"> 
			<i class="fas fa-envelope"></i>
			Send 
			</button>
		</div>
	</div>
	

	<div class="footer-bottom">
		
		&copy; BookTopia.com | Designed by KRLN Designers
	</div>

</div>
<!-- /Footer-->
</body>
</html>