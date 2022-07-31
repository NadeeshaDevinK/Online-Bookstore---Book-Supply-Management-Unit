<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        
        input[type=email], input[type=password] {
		width: 100%;
	  	padding: 12px;
	  	border: 1px solid #ccc;
	  	border-radius: 4px;
	  	resize: vertical;
		}
        #content {
		  max-width: 1000px;
		  margin: auto;
		  float: center;
		}
</style>
<!-- Page Styles -->
<!-- Font-Awesome Icon pack-->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta charset="ISO-8859-1">
<title>Publisher Login Page</title>
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
	<h2 style="font-family:Courier New;">Register</h2>
	</div>
</div>
<!-- Page Header section -->
<header>
	<div class="logo">
  		<h1 class="logo-text"><span>Book</span>Topia</h1>
	</div>
</header>
<!-- Page Navigation section -->
<!-- Page Body section -->

<div class="page-wrapper" >
	<div class="container" id="content" style="float: center;">
		<form action="PublisherLogin" method="post" onsubmit="return checkID()">
		<!-- User Email -->
		<div class="row">
			<div class="col-25" id="center">
				<label for="email">Publisher E-mail</label> 
			</div>
			<div class="col-75" style="width: 75%;">
				<input type="email" id="publisherEmail" name="publisherEmail" placeholder="Enter Your Publisher Email">
			</div>
		</div>
		<br>
		<!-- User Email -->
		<!-- User Password -->
		<div class="row">
			<div class="col-25" id="center">
				<label for="password">Publisher Password</label> 
			</div>
			<div class="col-75" style="width:75%;">
				<input type="password" id="publisherPwd" name="publisherPwd" placeholder="Enter Your Publisher Password">
			</div>
		</div>
		<br>
		<!-- user Password -->
		<br>
		
		<!-- login button -->
		<div class="pageHead" >
			<div class="center" id="center">
				<input type="submit" name="submit" value="Log In">
			</div>
		</div>
		<!-- login button -->
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