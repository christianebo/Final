<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sofa.aspx.cs" Inherits="ACTIVITY_2.WebPages.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HomePage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link type="text/css" rel="stylesheet" href="SofaStyle.css" />
</head>
    <body>
         <div class="navbar">
        <asp:Image ID="logo" runat="server" ImageUrl="~/Images/Logo.jpg"/>
        <a class="active" href="HomePage.aspx"><i class="fas fa-home" style='font-size:25px'></i> Home</a>
		<a href="Bed.aspx"><i class="fas fa-bed" style='font-size:25px'></i> Bed</a>
        <a href="Sofa.aspx"><i class="fas fa-couch" style='font-size:25px'></i> Sofa</a>
        <a href="Chair.aspx"><i class="fas fa-chair" style='font-size:25px'></i> Chair</a>
        <a href="Checkout.aspx"><i class="	fas fa-cart-arrow-down" style='font-size:25px'></i> View Cart</a> 
        <a href="LoginPage.aspx"><i class="fas fa-user-times" style='font-size:25px'></i> Log out</a>
    </div>
        <div class="centered">
		<center><p>SOFA</p></center>
		</div>
        <br />
        <hr />
          <div class="sample">
    <img class="sampleImg" src="../Images/sample.jpg"/>
	<br />
	<h1>The Loveseat / Sofa</h1>
	<p>In all fairness, the loveseat is pretty much the same as sofa aside from it being smaller. In other countries we refer to them as a 2 seater or a 3 seater, which kinda makes them slightly different types of sofas only.

            Be it sofa (Arabic origins: suffah), couch (French origins: couche) – all of us would have a similar image in mind. P13,456.75</p>
	<br />
	<a href="AddToCart.aspx"><i class="fa fa-shopping-cart" style='font-size:25px'></i> add to cart</a>
	</div>    
	<br />
	<hr />
      <div class="sample2">
    <img class="sample2" src="../Images/sample2.jpg"/>
	<br />
	<h1>The Sectional / Modular Sofa</h1>
	<p>Sectional / Modular sofas are definitely another type of sofa, or arguably a combination of sofa pieces put together to create the ultimate living room seating arrangement.

The larger families are, the more it makes sense to have more sofas in the same room to accommodate everyone.

Sectional types of sofas allow the flexibility of expanding seating sizes, or downsizing by taking away smaller sections should they not be needed. P16,560.50</p>
	<br />
	<a href="AddToCart.aspx"><i class="fa fa-shopping-cart" style='font-size:25px'></i> add to cart</a>
	</div>
	<br />
	<hr />
         <style>

          body{
            background-image: url('../Images/Background.jpg');
            background-size:cover;
    }
     </style>
    <form id="form1" runat="server">
        <div>
        </div>
        	<footer class="footer-distributed">
		<div class="footer-center">
		<a href="#"><i class="fas fa-location-arrow" style='font-size:25px'></i> Urgello st., Sambag 1 Cebu City, 6000</a>
		<br />
		<a href="#"><i class="fas fa-phone-alt" style='font-size:25px'></i> 888-8888</a>
		<br />
		<a href="#"><i class="fa fa-phoner" style='font-size:25px'></i> ©Copyright 2020</a>
		</div>
		
		
</footer>
    </form>
</body>
</html>
