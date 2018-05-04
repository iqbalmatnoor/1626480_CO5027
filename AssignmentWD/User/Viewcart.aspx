<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Viewcart.aspx.cs" Inherits="AssignmentWD.User.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    View cart
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cont" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Continue shopping</asp:HyperLink>
    <br />
    <br />
    <br />
    <asp:Button ID="btnlogout" runat="server" Text="Log out" OnClick="btnlogout_Click" />
    <br />
    <br />
    <asp:Button ID="btncheckout" runat="server" Text="Checkout" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
