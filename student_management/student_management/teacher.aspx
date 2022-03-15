<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="teacher.aspx.cs" Inherits="student_management.teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Teacher's ID"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="teacher_id" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Teacher's Name"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="teacher_name" runat="server"></asp:TextBox>
              
            </td>
        </tr>
    </table>
    <br>
      <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="teacher_id" HeaderText="Teacher ID" />
            <asp:BoundField DataField="teacher_name" HeaderText="Teacher Name" />
        </Columns>
    </asp:GridView>
</asp:Content>
