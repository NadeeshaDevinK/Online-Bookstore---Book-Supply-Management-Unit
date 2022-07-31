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
        /*Search Section styling*/
		.searchsection {
            display: flex;
        }

        .lefts {
            flex: 33%;
            padding: 15px 0;
        }

        .centers {
            flex: 33%;
            padding: 15px 0;
        }
        .rights {
            flex: 33%;
            padding: 15px 0;
        }
/*Search Section styling*/
</style>
<!-- Page Header Styles -->
<!-- Font-Awesome Icon pack-->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta charset="ISO-8859-1">
<title>Publisher Order Search Results</title>
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
	<h2 style="font-family:Courier New;"></h2>
	</div>
</div>
<!-- Page Header section -->
<!-- Page Navigation section -->
<div class="innerpageNav" id="ul2">
	<div class="left1" id="li2">
	<a href="PublisherHomePage.jsp">
		<font  style="font-family:Brush Script MT ; text-align:center;"><span>Book</span>Topia</font>
	</a>
    </div>
	<div  style="text-align:center;" class="right1" id="li2">
		<a id="li2 a" style="font-family:sans-serif;">
                    Requested Book Supply Orders
        </a>
    </div>
</div>
<br>
<!-- Page Navigation section -->
<!-- Page Body section -->

<div class="page-wrapper">
	<div class="container">
		<form action="validatesup" method="post" >
		<fieldset > 
		<legend>Search Supplier Specific Order ID ( Supplier order ID Ex: Senarathna - SPxxx or Karunarathna - KPxxx )</legend>
		<!-- Search supply order number -->
		<div class="searchsection">
			<div class="lefts" id="center">
				<label for="supplyID">Supplier Order ID</label>
			</div>
			<div class="centers" style="width: 25%;">
				<input type="search" id="supplierNamesearch" name="supplierNamesearch" maxlength="6" size="6" title="give a Supply Order No as SPxxxx or KPxxxx" placeholder="Enter a supply order number">
			</div>
			<!-- Assign the button to navigate to the update page -->
			<div class="rights" id="center" style="padding: 8px 10px;">
			
				<input type="submit" value="Search Orders">
		
			</div>
			
		</div>
		
		<!-- Search supply order number -->
		</fieldset>
		</form>
		<br>
		<fieldset >
		<!-- set database objects to the variables -->
		<c:forEach var="sup" items="${supname}">
		
		<c:set var="supplyID" value="${sup.supplyID}"/>
		<c:set var="orderTitle" value="${sup.orderTitle}"/>
		<c:set var="supplierName" value="${sup.supplierName}"/>
		<c:set var="orderDate" value="${sup.orderDate}"/>
		<c:set var="bookName" value="${sup.bookName}"/>
		<c:set var="noofBooks" value="${sup.noofBooks}"/>
		
		<div class="row">
			<div class="col-25" id="center">
				<label for="supplyId">Supply Order Title</label> 
			</div>
			<div class="col-75" style="width: 25%;">
				<div id="in">
				${sup.orderTitle}
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-25" id="center">
				<label for="supplyId">Supply Order Required Date</label> 
			</div>
			<div class="col-75" style="width: 25%;">
				<div id="in">
				${sup.orderDate}
				</div>
			</div>
		</div>
		
		
		
		
		</c:forEach>
		<!-- set database objects to the variables -->
		<!-- Pass database data using c:url for the AdminSearchSupplyOrders.jsp page  -->
		<c:url value="PublisherSupplyReqView.jsp" var="supsearch">
			
			<c:param name="supplyID" value="${supplyID}"/>
			<c:param name="orderTitle" value="${orderTitle}"/>
			<c:param name="supplierName" value="${supplierName}"/>
			<c:param name="orderDate" value="${orderDate}"/>
			<c:param name="bookName" value="${bookName}"/>
			<c:param name="noofBooks" value="${noofBooks}"/>
		</c:url>
		<!-- Pass database data using c:url for the AdminSearchSupplyOrders.jsp page  -->
		
		<br>
		<div class="rights" id="center" style="padding: 8px 10px;">
			<a href="${supsearch}">
				<input type="submit" name="update" value="Show More Details">
			</a>
			</div>
		</fieldset>
		
	</div>

</div>
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
<!-- /Footer-->
</body>
</html>