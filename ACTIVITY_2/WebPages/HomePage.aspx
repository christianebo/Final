<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ACTIVITY_2.WebPages.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HomePage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link type="text/css" rel="stylesheet" href="HomeStylesheet.css" />
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
		<center><p>Good Day! Are you looking for a furniture? Then it is your lucky day. We offer the best furniture in the country!</p></center>
		</div>
        <br />
        <hr />
          <div class="sample">
    <img class="sampleImg" src="../Images/furniture3.jpg"/>
	<br />
	<h1>Furniture</h1>
	<p>Furniture refers to movable objects intended to support various human activities such as seating (e.g., chairs, stools, and sofas), eating (tables), and sleeping (e.g., beds). ... 
        Furniture can be made using a variety of woodworking joints which often reflect the local culture.</p>
	<br />
	</div>    
	<br />
	<hr />
      <div class="sample">
    <br />
	<h1>
    <img class="sample2" src="../Images/Modern.jpg"/>
    <br />
        <h1>Modern furniture</h1>
	<p style="margin-left: 600px">Modern furniture design, also referred to as midcentury modern for its popularity during the mid-20th century, was influenced by the idea that craftsmen and artists could work together to 
        create functional furniture with a more artistic appeal. In the design sense, modern does not refer to the current day, but to a particular aesthetic.</p>
	<br />
	</div>
	<br />
	<hr />
         <style>

          body{
            background-image: url('../Images/Background.jpg');
            background-size:cover;
    }
             .Modern {
                 width: 548px;
                 height: 256px;
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
