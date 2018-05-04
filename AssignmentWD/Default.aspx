<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AssignmentWD.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
Home: Shounen Jump
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cont" runat="server">
            <h1> List of Products</h1>

        <asp:Repeater ID="ProductList" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>
                    <table id="tblItem">
                        <tr>
                            <td>
                        <a href="<%# Eval("Product_ID", "Product1.aspx?Id={0}") %>">
                        <asp:Image ID="dspImg" height= "230" width= "190" runat="server" alt="Product img" ImageUrl='<%# Eval("Image") %>'/></a>
                             <p><%# Eval("Product_Name")%></p>
                                  <p>Quantity: <%# Eval("Quantity") %></p>
                                  <p><%# Eval("Product_Desc") %></p>
                                        <strong class="proPrice">Price : <%# Convert.ToDecimal(Eval("Price")).ToString("c") %></strong>
                            </td>
                        </tr>
                    </table>
            </ItemTemplate>
            <FooterTemplate></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626480_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [tblProduct] WHERE ([Quantity] &gt; @Quantity)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="Quantity" Type="Int32" />
            </SelectParameters>
            </asp:SqlDataSource>
        <br />
</asp:Content>
