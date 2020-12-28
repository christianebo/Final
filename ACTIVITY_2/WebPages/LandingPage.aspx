<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="ACTIVITY_2.WebPages.LandingPage" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LandingPage</title>
    <style>
        body{
            background-image: url('../Images/Background.jpg');
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
        h2{
            font-size:40px;
            color:black;
            margin-left:800px;
        }
        h1{
            font-size:40px;
            color:black;
            margin-left:800px;
        }
        p{
            font-size:20px;
            color:black;
            margin-left:800px;
        }
    </style>
</head>
    
<body>
    <h1>Looking for a furniture?</h1>
    <h2>Good choice on clicking here!</h2>
    <p>What you are looking is available here!</p>
    <br />

    <form id="form1" runat="server">
    <div style="height: 99px">
    <center><asp:Button ID="RegBtn" runat="server" Height="42px" Text ="REGISTER" Width="172px" style="margin-top:31px" OnClick="RegBtn_Click"/></center>
    <br />
    <br />
    <center><asp:Button ID="LogBtn" runat="server" Height="42px" Text ="LOGIN" Width="172px" style="margin-top:31px" OnClick="LogBtn_Click"/></center>
    <br />
    <br />
    </div>
    </form>
</body>
</html>