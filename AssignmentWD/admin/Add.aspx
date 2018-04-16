<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="AssignmentWD.admin.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cont" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
    <EditItemTemplate>
        Product_ID:
        <asp:Label ID="Product_IDLabel1" runat="server" Text='<%# Eval("Product_ID") %>' />
        <br />
        Product_Name:
        <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
        <br />
        Product_Desc:
        <asp:TextBox ID="Product_DescTextBox" runat="server" Text='<%# Bind("Product_Desc") %>' />
        <br />
        Quantity:
        <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
        <br />
        Price:
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Product_ID:
        <asp:TextBox ID="Product_IDTextBox" runat="server" Text='<%# Bind("Product_ID") %>' />
        <br />
        Product_Name:
        <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
        <br />
        Product_Desc:
        <asp:TextBox ID="Product_DescTextBox" runat="server" Text='<%# Bind("Product_Desc") %>' />
        <br />
        Quantity:
        <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
        <br />
        Price:
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        Product_ID:
        <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("Product_ID") %>' />
        <br />
        Product_Name:
        <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Bind("Product_Name") %>' />
        <br />
        Product_Desc:
        <asp:Label ID="Product_DescLabel" runat="server" Text='<%# Bind("Product_Desc") %>' />
        <br />
        Quantity:
        <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
        <br />
        Price:
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626480_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Desc] = @original_Product_Desc) OR ([Product_Desc] IS NULL AND @original_Product_Desc IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([Product_ID], [Product_Name], [Product_Desc], [Quantity], [Price]) VALUES (@Product_ID, @Product_Name, @Product_Desc, @Quantity, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [Product_Name] = @Product_Name, [Product_Desc] = @Product_Desc, [Quantity] = @Quantity, [Price] = @Price WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Desc] = @original_Product_Desc) OR ([Product_Desc] IS NULL AND @original_Product_Desc IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Product_ID" Type="Int32" />
        <asp:Parameter Name="original_Product_Name" Type="String" />
        <asp:Parameter Name="original_Product_Desc" Type="String" />
        <asp:Parameter Name="original_Quantity" Type="Int32" />
        <asp:Parameter Name="original_Price" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Product_ID" Type="Int32" />
        <asp:Parameter Name="Product_Name" Type="String" />
        <asp:Parameter Name="Product_Desc" Type="String" />
        <asp:Parameter Name="Quantity" Type="Int32" />
        <asp:Parameter Name="Price" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Product_Name" Type="String" />
        <asp:Parameter Name="Product_Desc" Type="String" />
        <asp:Parameter Name="Quantity" Type="Int32" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="original_Product_ID" Type="Int32" />
        <asp:Parameter Name="original_Product_Name" Type="String" />
        <asp:Parameter Name="original_Product_Desc" Type="String" />
        <asp:Parameter Name="original_Quantity" Type="Int32" />
        <asp:Parameter Name="original_Price" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>
