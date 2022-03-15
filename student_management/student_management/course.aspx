<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="student_management.course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Course ID"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="course_id" runat="server"></asp:TextBox>

            </td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Course code"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="course_code" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Course Title"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="course_title" runat="server"></asp:TextBox>

            </td>
        </tr>
    </table>
    <br>
    <asp:Button ID="Button1" runat="server" Text="ADD DATA" OnClick="Button1_Click" />

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">

        <Columns>
            <asp:BoundField DataField="course_id" HeaderText="CourseID" />
            <asp:BoundField DataField="course_code" HeaderText="coursecode" />
            <asp:BoundField DataField="course_title" HeaderText="coursename" />
        </Columns>
    </asp:GridView>
</asp:Content>
