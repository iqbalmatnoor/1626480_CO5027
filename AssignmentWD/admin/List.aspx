<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="AssignmentWD.admin.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cont" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" SortExpression="Product_ID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
            <asp:BoundField DataField="Product_Desc" HeaderText="Product_Desc" SortExpression="Product_Desc" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:HyperLinkField DataNavigateUrlFields="Product_ID" DataNavigateUrlFormatString="Edit.aspx?Id={0}" Text="Edit" />
            <asp:HyperLinkField DataNavigateUrlFields="Product_ID" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" Text="Upload Image" InsertVisible="False" />
        </Columns>
    </asp:GridView>
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
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
