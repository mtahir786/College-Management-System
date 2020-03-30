<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AllStudents.aspx.cs" Inherits="College_Manament_System.AllStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>All Students</title>
    <style>
        .heading{
            text-align: center;
            width: 1293px;
            background-color: royalblue;
        }
        .btn{
            position: absolute;
            left:93%;
            top: 100px ;
            width: 83px; 
            height: 38px;   
            background-color: green;
            
        }
        .Grid{
            width: 1293px;
        }


    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="heading">All Students</h2>

    <asp:Button ID="AddStudent" runat="server" Text="Add Student" CssClass="btn" BorderStyle="None" OnClick="AddStudent_Click" />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="Grid">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="StudentName" HeaderText="Student Name" SortExpression="FirstName" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        </Columns>
        <HeaderStyle BackColor="#0033CC" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollegeManagementSystemConnectionString2 %>" SelectCommand="SELECT [ID], [FirstName] + ' ' + [LastName] as StudentName, [Address]  FROM [Students]"></asp:SqlDataSource>
</asp:Content>
