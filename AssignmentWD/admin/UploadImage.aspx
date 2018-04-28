<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="AssignmentWD.admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cont" runat="server">
    <asp:FileUpload ID="imageFileUploadControl" runat="server" />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
    <br />
    <asp:Image ID="CurrentImage" runat="server" />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="List Product" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
