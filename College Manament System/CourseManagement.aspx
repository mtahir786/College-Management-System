<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="CourseManagement.aspx.cs" Inherits="College_Manament_System.CoursesTest" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <title>Course Management</title>
    <style>
        body {
            overflow-x: hidden;
        }

        .heading {
            /*text-align: center;*/
            width: 1293px;
            background-color: gray;
        }

        h2 {
            text-align: center;
            width: 1293px;
            background-color: #C0C0C0;
            
        }

        table {
            width: 1293px;
            /*border-style: solid;
            border-color: black;*/
        }

        .tb {
            width: 980px;
            /*border-radius: 5%;*/
            
        }

        .button {
            height: 35px;
            border-radius: 5%;
        }


        .btn {
            text-align: right;
           
        }
        .auto-style3 {
            width: 1293px;
            height: 80px;
            position: absolute;
            top: 400px;
            left: 215px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <h2>Course Management</h2>
    </div>



    <table>
   
        <tr>
            <td style="width:300px;">Couse Code </td>
            <td style="width: 983px;">
                <asp:TextBox ID="TB_CourseCode" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Course Name</td>
            <td>
                <asp:TextBox ID="TB_CourseName" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Semester or Year</td>
            <td>
                <asp:DropDownList ID="DD_DurationType" runat="server" CssClass="tb">
                    <asp:ListItem>&lt;-- Select Duration Type --&gt;</asp:ListItem>
                    <asp:ListItem>Semester</asp:ListItem>
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>No. of Semester or Year</td>
            <td>
                <asp:TextBox ID="TB_SemOrYear" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td class="btn">
                <asp:Button ID="Button_AddCourse" runat="server" Text="Add Couse" BackColor="#0066FF" ForeColor="White" CssClass="button" BorderStyle="None" OnClick="Button_AddCourse_Click" />
                <asp:Button ID="Button_RollGenerator" runat="server" Text="Roll Generator" BackColor="#0066FF" BorderStyle="None" ForeColor="White" CssClass="button"/>
            </td>
        </tr>
    </table>



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" DataKeyNames="CourseCode" DataSourceID="SqlDataSource1" style="z-index: 1" BackColor="White">
        <Columns>
            <asp:BoundField DataField="CourseCode" HeaderText="Course Code" ReadOnly="True" SortExpression="CourseCode" />
            <asp:BoundField DataField="CourseName" HeaderText="Course Name" SortExpression="CourseName" />
            <asp:BoundField DataField="Duration" HeaderText="Semester/Year" SortExpression="SemesterOrYear" />
            
        </Columns>
        <HeaderStyle BackColor="#336600" ForeColor="White" />
        <RowStyle Font-Size="15pt" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollegeManagementSystemConnectionString %>" SelectCommand="  SELECT [CourseCode], [CourseName], str([NoOfSemYear]) + ' ' + [SemesterOrYear] as Duration FROM [Courses]"></asp:SqlDataSource>
         
</asp:Content>
