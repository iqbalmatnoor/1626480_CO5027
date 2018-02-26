<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AssignmentWD.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Contact 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cont" runat="server">

    <h1> Contact Form</h1>

    <h3>Please fill in the require field(*).</h3>

    <form class ="form" runat="server">

        <p class="name">
            <label for="name">Name* </label><br /><br />
            <input type="text" name="name" id="fname" placeholder="Full name" />
        </p>

        <p class="email">
            <label for="email">Email* </label><br /><br />
            <input type="email" name="email" id="eml" placeholder="mail@example.com" />
        </p>

        <p class="contact">
            <label for="contact">Contact Number </label><br /><br />
            <input type="tel" name="contact" id="contactno" placeholder="+673 1234567" />
        </p>

        <p class="text">
            <label for="comment">Comment*</label><br /><br />
        <textarea id="comment" cols="20" rows="2" placeholder="Inform us anything"></textarea>
        </p>

        <p class="submit">
            <input type="submit" value="Send" />
        </p>
    </form>
</asp:Content>
