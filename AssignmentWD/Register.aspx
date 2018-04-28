<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AssignmentWD.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Register
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cont" runat="server">
    <h1>Register Form</h1>
    
    <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
    <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>

    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
    <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" />
    <br />
    <br />
    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
