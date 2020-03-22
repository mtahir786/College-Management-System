<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Login.aspx.cs" Inherits="College_Manament_System.Student_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>College Management System-Student Login </title>
    <style>
        body{
            overflow:hidden;

        }
        .auto-style1 {
            text-align: center;
            font-size: 38pt;
            height: 60px;
        }
        .auto-style8 {
            left: 43%;
            top: 76%;
            position: absolute;
            height: 50px;
            width: 102px;
        }
        .auto-style9 {
            left: 50%;
            top: 50%;
            position: absolute;
            height: 438px;
            width: 350px;
            transform: translate(-50%,-50%);
            

        }
        .auto-style10 {
            position: absolute;
            top: 130px;
            left: 126px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 201px;
            left: 128px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 131px;
            left: 30px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 203px;
            left: 33px;
            z-index: 1;
        }
        .auto-style14 {
            text-align: center;
        }
        </style>
</head>
<body style="background-image: url('Images/pattern-background.jpg'); height: 749px;">
    
    <form id="form1" runat="server"> 
            <h1 class="auto-style1">College Management System</h1>
            <hr style="border: thin solid #000000" />
            <div style="border-style: solid; border-color: #000000; border-radius:5%" class="auto-style9";">
                <h1 class="auto-style14">Student Login</h1>
                <asp:TextBox ID="tb_StudentPass" runat="server" CssClass="auto-style11" TextMode="Password"></asp:TextBox>

                <asp:TextBox ID="Tb_StudentUN" runat="server" CssClass="auto-style10" OnTextChanged="Tb_StudentUN_TextChanged"></asp:TextBox>
                <asp:Label ID="Student_UserName" runat="server" CssClass="auto-style12" Text="Username" Font-Bold="True"></asp:Label>
                <asp:Label ID="Student_passwd" runat="server" CssClass="auto-style13" Text="Password" Font-Bold="True"></asp:Label>
                <asp:Button ID="ButtonLogIn" runat="server" BackColor="#CC3300" BorderStyle="Solid" Text="Log In" BorderColor="#CC3300" Font-Bold="True" ForeColor="Black" OnClick="ButtonLogIn_Click" CssClass="auto-style8" />
            </div>
    </form>
        
        
        
</body>
</html>
