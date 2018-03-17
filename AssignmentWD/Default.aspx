<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AssignmentWD.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
Home: Shounen Jump
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cont" runat="server">
    <h1>Top Sales</h1>

    <img src="~/Image/NSvol70.png" alt="Naruto Shippuden Volume: 70" runat="server" class="img01" />
    
    <img src="~/Image/bleachvol74.png" alt="Bleach The Death and the Strawberry Volume 74" runat="server" class="img02"/>

    <img src="~/Image/somavol13.png" runat="server" class="img03"/>

    <img src="~/Image/OPvol64.jpg" runat="server" class="img04"/>

    <img src="~/Image/Ftvol59.png" runat="server" class="img05"/>

    <div id="p1">
    <p><a href="Product1.aspx">Shippuden Volume 70</a> 
        <br /><br />Price : $9.90 BND</p></div>
  
        <div id="p2">
    <p><a href="Product2.aspx">Bleach Volume 74</a><br />
        <br />Price : $10.50 BND</p></div>

            <div id="p3">
    <p><a href="Product3.aspx">Shokugeki no Soma Volume 13<br /></a>
        <br />Price: $10.00 BND</p></div>

    <div id="p4">
    <p><a href="Product4.aspx">One Piece Volume 64<br /></a>
        <br />Price: $9.50 BND</p></div>

    <div id="p5">
    <p><a href="Product5.aspx">Fairy Tail Volume 59<br /></a>
        <br />Price: $10.50 BND</p><br /></div>

    <h1> Top Rated</h1>
    <div id="topR">

    </div>
</asp:Content>
