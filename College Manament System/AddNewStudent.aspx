<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewStudent.aspx.cs" Inherits="College_Manament_System.AdddNewStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        /*.roundedcorner{
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
        }*/
        .auto-style1 {
            position: absolute;
            top: 338px;
            left: 296px;
            z-index: 1;
            width: 146px;
            height: 47px;
        }
        .auto-style2 {
            position: absolute;
            top: 96px;
            left: 27px;
            z-index: 1;
            width: 99px;
            height: 23px;
            right: 1451px;
        }
        .auto-style3 {
            position: absolute;
            top: 157px;
            left: 38px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 95px;
            left: 145px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 156px;
            left: 144px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 208px;
            left: 146px;
            z-index: 1;
        }
        .auto-style8 {
            height: 732px;
        }
        .auto-style9 {
            position: absolute;
            top: 96px;
            left: 387px;
            z-index: 1;
            width: 99px;
            height: 23px;
            right: 1091px;
        }
        .auto-style10 {
            position: absolute;
            top: 95px;
            left: 512px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 157px;
            left: 372px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 156px;
            left: 514px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 210px;
            left: 27px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 210px;
            left: 417px;
            z-index: 1;
            right: 1342px;
        }
        .auto-style15 {
            position: absolute;
            top: 209px;
            left: 513px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 268px;
            left: 410px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 266px;
            left: 515px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 268px;
            left: 22px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 264px;
            left: 146px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 188px;
            left: 163px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 206px;
            left: 325px;
            z-index: 1;
            width: 28px;
            height: 30px;
        }
        .auto-style22 {
            width: 309px;
            height: 213px;
            position: absolute;
            top: 255px;
            left: 311px;
            z-index: 1;
        }
        .auto-style23 {
            height: 51px;
        }
        </style>
</head>
<body style="height: 737px">
    <form id="form1" runat="server">
        <div class="auto-style8">
            <h2 style="background-color:aqua" class="auto-style23">Add New Student</h2>

            
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="First Name"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Email ID"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style11" Text="Contact Number"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="auto-style10" ></asp:TextBox>
            <asp:TextBox ID="txtEmailid" runat="server" CssClass="auto-style6"></asp:TextBox>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style17"></asp:TextBox>
            <asp:Button ID="btnAddStudent" runat="server" CssClass="auto-style1" OnClick="btnAddStudent_Click" Text="Add Student" />

            
            <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="Last Name"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="auto-style5" ></asp:TextBox>
            <asp:TextBox ID="txtContactNo" runat="server" CssClass="auto-style12"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style18" Text="Father's Name"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style14" Text="Gender"></asp:Label>
            <asp:DropDownList ID="DropDownListGender" runat="server" CssClass="auto-style15">
                <asp:ListItem>Select Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style16" Text="Address"></asp:Label>
            <asp:TextBox ID="txtDOB" runat="server" CssClass="auto-style7"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style13" Text="Date of Birth"></asp:Label>
            <asp:TextBox ID="txtFatherName" runat="server" CssClass="auto-style19"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailid" CssClass="auto-style20" 
            ErrorMessage="Enter valid Email" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            <asp:ImageButton ID="ImgBtnCalendar" runat="server" CssClass="auto-style21" ImageUrl="~/Images/icons8-calendar-20.png" />
            <asp:Calendar ID="CalendarDOB" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" CssClass="auto-style22" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
        </div>
    </form>
</body>
</html>
