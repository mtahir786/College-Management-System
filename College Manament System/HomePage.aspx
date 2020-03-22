<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="College_Manament_System.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .body{
            overflow: hidden;
        }
        .auto-style1 {
            position: absolute;
            transform: translate(-50%,-50%);
            height: 450px;
            width: 1200px;
            top: 50%;
            left : 50%;
        }
        .auto-style2 {
            font-size: 38pt;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            font-size: 40pt;
        }
        .auto-style4 {
            position: absolute;
            top: 208px;
            left: 165px;
            z-index: 1;
            width: 240px;
            height: 73px;
        }
        .auto-style5 {
            position: absolute;
            top: 208px;
            left: 761px;
            z-index: 1;
            width: 240px;
            height: 73px;
        }
    </style>
</head>
<body style="background-image:url('Images/pattern-background.jpg')">
    <form id="form1" runat="server">
        <h1 class="auto-style2">College Management System</h1>    
        <div class="auto-style1" style="background-color: #FFFFFF">
            <h1 class="auto-style3">LOGIN</h1>
                <asp:Button ID="Student_Page" runat="server" BackColor="#6666FF" CssClass="auto-style4" Font-Bold="True" Font-Size="Large" OnClick="Student_Page_Click" Text="Student" />
                <asp:Button ID="Faculty_Page" runat="server" BackColor="#6666FF" CssClass="auto-style5" Font-Bold="True" Font-Size="Large" OnClick="Faculty_Page_Click" Text="Faculty" />
            
        </div>
    </form>
</body>
</html>
