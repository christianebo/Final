<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ACTIVITY_2.WebPages.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body{
            background-image: url('../Images/Download.jpg');
            background-size:cover;
        }
        #form1{
            width:400px;
            height:400px;
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
        <center><asp:Label ID="lab" runat="server" style="margin-left:20px;" Text="Log In" Font-Names="Helvitica" Font-Size="50px"></asp:Label></center> 
       <br />
       <br />
       <center><asp:Label ID="Label2" runat="server" Text ="Username:" Font-names="Helvitica"></asp:Label></center> 
       <center><asp:TextBox ID="Username" runat="server" Height="30px" Width="219px"></asp:TextBox></center>
       <br />
       <br />
       <center><asp:Label ID="Label1" runat="server" Text ="Password:" Font-names="Helvitica"></asp:Label></center> 
       <center><asp:TextBox ID="Password" runat="server" Height="24px" style="margin-left: 0px ; text-align:center;" Width="219px" font-names="Helvetica" TextMode="Password" ></asp:TextBox></center> 
       <br />
       <br />
       <center><asp:Button ID="Login" runat="server" Height="39px" Text="Login" Width="189px" OnClick="Go_Login" /></center> 
       <br />
       <center><asp:Button ID="Back" runat="server" Height="39px" Text="Back" Width="189px" OnClick="Go_Back" /></center>
       <br />
    </form>
</body>
</html>
