<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="student_management.student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="student's ID"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="student_id" runat="server"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Student Name"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="student_name" runat="server"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Course ID"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="c_id" runat="server"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
                
            </td>
            <td>
                <asp:TextBox ID="phone" runat="server"></asp:TextBox>
            </td>
        </tr>
 

    </table>
    <br>
    <asp:Button ID="Button1" runat="server" Text="Add data" OnClick="Button1_Click" />

    <br/>
     <br/>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
        <Columns>
           
            <asp:BoundField DataField="student_id" HeaderText="studentId" />
            <asp:BoundField DataField="student_name" HeaderText="studentName" />
            <asp:BoundField DataField="c_id" HeaderText="Course ID" />
            <asp:BoundField DataField="email" HeaderText="Email" /> 
            <asp:BoundField DataField="phone" HeaderText="Phone" />
           
        </Columns>
    </asp:GridView>

</asp:Content>
