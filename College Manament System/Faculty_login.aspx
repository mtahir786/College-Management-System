<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Faculty_login.aspx.cs" Inherits="College_Manament_System.Faculty_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .login{
            position: absolute;
            height: 440px;
            width: 350px;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            
        }

        .heading {
            text-align: center;
            font-size: 38pt;
        }
        .auto-style1 {
            position: absolute;
            height: 440px;
            width: 350px;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            /*background-color: #FFFFFF;*/
        }
        .auto-style2 {
            position: absolute;
            top: 119px;
            left: 23px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 119px;
            left: 119px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 190px;
            left: 119px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 192px;
            left: 27px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 343px;
            left: 123px;
            z-index: 1;
            width: 99px;
            height: 42px;
        }
        </style>
</head>
<body style="background-image:url('Images/colortheory.jpg')">
    <form id="form1" runat="server">
        <h1 class="heading">College Management System</h1>
        <hr style="border: thin solid #000000"/>
        <div class="auto-style1" style="border-color: #000000; border-style: solid; border-radius:5%">
            <h1 style="text-align:center">Faculty Login</h1>

            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Username" Font-Bold="True"></asp:Label>

            <asp:TextBox ID="username_Faculty" runat="server" CssClass="auto-style3"></asp:TextBox>

            <asp:TextBox ID="password_Faculty" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Font-Bold="True" Text="Password"></asp:Label>

            <asp:Button ID="Button_Login" runat="server" BackColor="#0066FF" CssClass="auto-style6" ForeColor="White" Text="Sign In" OnClick="Button_Login_Click" BorderColor="#0066FF" BorderStyle="None" />

        </div>
        
       
    </form>
    
</body>
</html>
