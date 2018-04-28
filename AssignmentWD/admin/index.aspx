<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AssignmentWD.admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Admin Site
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cont" runat="server">
    <h1>Welcome to Admin Panel</h1>

    <p>
        <asp:Button ID="addBtn" runat="server" Text="Add Product" OnClick="addBtn_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="listBtn" runat="server" Text="List Product" OnClick="listBtn_Click" />
&nbsp;&nbsp;&nbsp; </p>
    <p>Default page for admin</p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
