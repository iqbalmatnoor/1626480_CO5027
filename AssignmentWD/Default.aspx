<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AssignmentWD.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
Home: Shounen Jump
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cont" runat="server">
            <h1> List of Products</h1>

        <asp:Repeater ID="ProductList" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><ul></HeaderTemplate>
            <ItemTemplate>

                <li>
                   <a href="<%# Eval("Product_ID", "Product1.aspx?Id={0}") %>">
                    <asp:Image ID="dspImg" height= "100" width= "100" runat="server" ImageUrl='<%# Eval("Image") %>' /></a>
                    <div class="proName">
                        <p><%# Eval("Product_Name")%></p>
                        <div class="proDesc">
                            <p>Quantity: <%# Eval("Quantity") %></p>
                            <p><%# Eval("Product_Desc") %></p>
                            <strong class="proPrice">Price : <%# Convert.ToDecimal(Eval("Price")).ToString("c") %></strong>
                        </div>
                    </div>
                   
                    </a>
                </li>
            </ItemTemplate>

            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626480_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
        <br />
</asp:Content>
