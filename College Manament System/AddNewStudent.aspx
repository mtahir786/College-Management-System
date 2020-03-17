<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewStudent.aspx.cs" Inherits="College_Manament_System.AdddNewStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .roundedcorner{
            font-size:11pt;
            margin-left:auto;
            margin-right:auto;
            margin-top:1px;
            margin-bottom:1px;
            padding:3px;
            border-top:1px solid;
            border-bottom:1px solid;
            border-right:1px solid;
            border-left:1px solid;
            -moz-border-radius: 8px;
            -webkit-border-radius: 8px;
        }
        .auto-style1 {
            position: absolute;
            top: 536px;
            left: 189px;
            z-index: 1;
            width: 146px;
            height: 47px;
        }
        .auto-style2 {
            position: absolute;
            top: 96px;
            left: 10px;
            z-index: 1;
            width: 99px;
            height: 23px;
        }
        .auto-style3 {
            position: absolute;
            top: 157px;
            left: 14px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 210px;
            left: 12px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 96px;
            left: 123px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 156px;
            left: 122px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 737px">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="btnSave" runat="server" CssClass="auto-style1" OnClick="btnSave_Click" Text="Save" />
        
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="First Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Last Name"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server" CssClass="auto-style5" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:TextBox ID="txtLastName" runat="server" CssClass="auto-style6"></asp:TextBox>
    </form>
</body>
</html>
