<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AssignmentWD.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Login 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cont" runat="server">
    <h1>Login Form</h1>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
        <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
        <asp:TextBox ID="txtLoginPassword" textmode="Password" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
    </p>
    <p>
        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
    </p>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
