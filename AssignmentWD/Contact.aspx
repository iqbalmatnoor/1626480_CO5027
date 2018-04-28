<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AssignmentWD.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Contact 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cont" runat="server">

    <h1> Contact Form</h1>

    <h3>Please fill in the require field(*).</h3>

        <p></p>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        
        <p></p>

        <p class="name">
            <asp:Label ID="lblName" runat="server" Text="Name*" AssociatedControlID="txtName"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtName" runat="server" placeholder="Johm Smite"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqNameField" runat="server" ControlToValidate="txtName" Display="None" ErrorMessage="Please enter your name."></asp:RequiredFieldValidator>
        </p>

        <p class="email">
            <asp:Label ID="lblEmail" runat="server" Text="Email*" AssociatedControlID="txtComment"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtEmail" runat="server" placeholder="mail@example.com"></asp:TextBox>
            <asp:RegularExpressionValidator ID="regEmailField" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Please enter email correctly" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="reqEmailField" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Please enter a email"></asp:RequiredFieldValidator>
        </p>

        <p class="contact">
            <asp:Label ID="lblContact" runat="server" Text="Contact Number" AssociatedControlID="txtContact"></asp:Label> 
            <br />
            <br />
            <asp:TextBox ID="txtContact" runat="server" Text="+673" placeholder="+673 1234567"></asp:TextBox>
        </p>

        <p class="text">
            <asp:Label ID="lblComment" runat="server" Text="Comment*" AssociatedControlID="txtComment"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqBodyField" runat="server" ControlToValidate="txtComment" Display="None" ErrorMessage="Please state the reason or feedback"></asp:RequiredFieldValidator>
        </p>

        <p class="submit">
            <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" OnClick="btnSendEmail_Click" />
        </p>

        <p class="litResult">
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
    <div id="map">
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 4.885731, lng: 114.931669 },
                zoom: 18
          });
          var marker = new google.maps.Marker({
              position: { lat: 4.885731, lng: 114.931669  },
              map: map
          })
        }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDMf4oGLV7-GHk9wuXGtL3e7UTYDwPl_3s&callback=initMap" type="text/javascript"></script>
</div>
</asp:Content>