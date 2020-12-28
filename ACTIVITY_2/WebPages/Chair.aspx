<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chair.aspx.cs" Inherits="ACTIVITY_2.WebPages.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HomePage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link type="text/css" rel="stylesheet" href="ChairStyle.css" />
</head>
    <body>
         <div class="navbar">
        <asp:Image ID="logo" runat="server" ImageUrl="~/Images/Logo.jpg"/>
        <a class="active" href="HomePage.aspx"><i class="fas fa-home" style='font-size:25px'></i> Home</a>
		<a href="Bed.aspx"><i class="fas fa-bed" style='font-size:25px'></i> Bed</a>
        <a href="Sofa.aspx"><i class="fas fa-couch" style='font-size:25px'></i> Sofa</a>
        <a href="Chair.apsx"><i class="fas fa-chair" style='font-size:25px'></i> Chair</a> 
        <a href="Checkout.aspx"><i class="	fas fa-cart-arrow-down" style='font-size:25px'></i> View Cart</a> 
        <a href="LoginPage.aspx"><i class="fas fa-user-times" style='font-size:25px'></i> Log out</a>
    </div>
        <div class="centered">
		<center><p>CHAIRS</p></center>
		</div>
        <br />
        <hr />
          <div class="sample">
    <img class="sampleImg" src="../Images/Chair3.jpg"/>
	<br />
	<h1>Tulip Chair</h1>
	<p>Finnish-American architect and designer Eero Saarinen famously hated the sight of many table and chair legs in a room, calling it an "ugly, confusing, 
        unrestful world." In an attempt to streamline these necessary supports, Saarinen developed the Tulip collection, which trades four legs for one central 
        pedestal, supporting a sculptural seat reminiscent of its namesake flower. The chair has been produced by Knoll (the manufacturer founded by Saarinen's 
        friend Florence and her husband Hans Knoll) since 1957. P7,400.25 </p>
	<br />
	<a href="AddToCart.aspx"><i class="fa fa-shopping-cart" style='font-size:25px'></i> add to cart</a>
	</div>    
	<br />
	<hr />
      <div class="sample2">
    <img class="sample2" src="../Images/Chair4.jpg"/>
	<br />
	<h1>Navy Chair</h1>
	<p>You've likely seen this chair at your local big-box store: Widely knocked-off, the original Navy chair was first introduced by Pennsylvania brand Emeco 
        in 1944 for use on warships. It's the result of a signature, 77-step (!) process in which welders melt recycled aluminum to form the sturdy, lightweight chair. P5,600.30 </p>
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
