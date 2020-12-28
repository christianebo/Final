<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bed.aspx.cs" Inherits="ACTIVITY_2.WebPages.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HomePage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link type="text/css" rel="stylesheet" href="BedStyle.css" />
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
		<center><p>BEDS</p></center>
		</div>
        <br />
        <hr />
          <div class="sample">
    <img class="sampleImg" src="../Images/Bed1.jpg"/>
	<br />
	<h1>QUEEN</h1>
	<p>This is likely to be one of the most commonly used size by the majority of the customers. It measures 60 x 84 inches, and it sleeps two people normally. 
        Now, you would be rather close to your partner, and the mattress needs to be splendid. This bed consist of a soft, cushioned mattress on a bed frame, the mattress resting
        either on a solid base, often wood slats, or a sprung base. P19,219.00</p>
	<br />
	<a href="AddToCart.aspx"><i class="fa fa-shopping-cart" style='font-size:25px'></i> add to cart</a>
	</div>    
	<br />
	<hr />
      <div class="sample2">
    <img class="sample2" src="../Images/Bed2.jpg"/>
	<br />
	<h1>CALIFORINA KING</h1>
	<p>This is the biggest size on the market unless you decide to go for a custom solution. It measures 72 x 84 inches, 
        and it's intended for really big master bedrooms. It's usually used by couples who expect a baby for the additional space. P21,570.00</p>
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
