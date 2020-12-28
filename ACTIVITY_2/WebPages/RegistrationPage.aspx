<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="ACTIVITY_2.WebPages.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
        <style>
        body{
            background-image: url('../Images/furniture2.jpg');
            background-size:cover;
        }
        #form1{
            width:800px;
            height:800px;
            margin-left: auto;
            margin-top: 100px;
            margin-right:auto;
            background-color: white;
            box-sizing: border-box;
            opacity: 85%;
        }
</style>
</head>
<body>
    <form id="form1" runat="server">
       <center><asp:Label ID="lab" runat="server" style="margin-left:20px;" Text="Register" Font-Names="Helvitica" Font-Size="50px"></asp:Label></center> 
       <br />
       <br />
       <center><asp:Label ID="Label2" runat="server" Text ="Last Name :" Font-names="Helvitica"></asp:Label></center> 
       <center><asp:TextBox ID="LastName" runat="server" Height="30px" Width="219px"></asp:TextBox></center>
       
       <br />
       <br />
       <center><asp:Label ID="Label3" runat="server" Text ="First Name :" Font-names="Helvitica"></asp:Label></center> 
       <center><asp:TextBox ID="FirstName" runat="server" Height="30px" Width="219px"></asp:TextBox></center> 
       <br />
       <br />
       <center><asp:Label ID="Label4" runat="server" Text ="Email :" Font-names="Helvitica"></asp:Label></center> 
       <center><asp:TextBox ID="Email" runat="server" Height="30px" Width="218px"></asp:TextBox></center> 
       <br />
       <br />
       <center><asp:Label ID="Label5" runat="server" Text ="Gender :" Font-names="Helvitica"></asp:Label></center> 
       <center><asp:TextBox ID="Gender" runat="server" Height="30px" Width="219px"></asp:TextBox></center> 
       <br />
       <br />
       <center><asp:Label ID="Label6" runat="server" Text ="Username :" Font-names="Helvitica"></asp:Label></center> 
       <center><asp:TextBox ID="Username" runat="server" Height="30px" Width="219px"></asp:TextBox></center> 
       <br />
       <br />
       <center><asp:Label ID="Label7" runat="server" Text ="Password :" Font-names="Helvitica"></asp:Label></center> 
       <center><asp:TextBox ID="Password" runat="server" type="password" Height="30px" Width="218px"></asp:TextBox></center> 
       <br />
       <br />
       <center><asp:Button ID="Register" runat="server" Height="39px" Text="Register" Width="189px" OnClick="Go_Register" /></center> 
       <br />
       <center><asp:Button ID="Back" runat="server" Height="39px" Text="Back" Width="189px" OnClick="Go_Back" /></center> 
       <br />
       <center><asp:Button ID="Login" runat="server" BackColor="#D4CBC3" BorderColor="#D4CBC3" BorderStyle="None" Font-Underline="true" ForeColor="#0099FF" Text="Already have an account? Login." OnClick="Go_Login" /></center> 
       <br />
       <br />
    </form>
</body>
</html>
