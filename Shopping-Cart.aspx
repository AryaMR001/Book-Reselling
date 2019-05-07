<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Shopping-Cart.aspx.cs" Inherits="Shopping_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        a{text-decoration:none;}
    .auto-style5 {
        width: 100%;
    }
        .auto-style6 {
            height: 20px;
        }
        .auto-style7 {
            margin-left: 267px;
        }
    </style>
  
     <table style="width:100%;background-color:#d9b3ff;" >
                                    <tr>
                                       <td>
                                           <a href="#">Remove Cart</a>
                                       </td> 
                                        <td>
                                            <a href="#">Update Cart</a>
                                        </td>
                                        <td>
                                            <a href="Delivery.aspx">Checkout</a>
                                        </td>
                                        <td>
                                            <a href="HomePage.aspx">Continue Shopping</a>
                                        </td>
                                        <td></td>
                                       </tr></table>
    <table class="auto-style5">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="deleted" style="margin: 0 0 0 257px">
                    <Columns>
                        <asp:TemplateField HeaderText="Cart_ID">  
                            <ItemTemplate>  
                                <asp:Label ID="lblcartid" runat="server" Text='<%#Eval ("Cart_ID")%>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>
                       
                        <asp:BoundField DataField="Bok_Name" HeaderText="Book" />
                        <asp:BoundField DataField="Author_Name" HeaderText="Author" />
                        <asp:BoundField DataField="Edition" HeaderText="Edition" />
                        <asp:BoundField DataField="Category" HeaderText="Category" />
                        <asp:BoundField DataField="Publication" HeaderText="Publication" />
                        <asp:BoundField DataField="Price" HeaderText="Price" />
                        <asp:ImageField DataImageUrlField="Book_Image" HeaderText="Image">
                            <ControlStyle Height="68px" Width="85px" />
                            <ItemStyle Height="20px" Width="20px" />
                        </asp:ImageField>
                       
                         <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ShowHeader="true" />  
                       
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style6">
               
                <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7" Height="110px">
                    <asp:Label ID="Label1" runat="server" Text="SUB TOTAL" Font-Bold="True"></asp:Label>
                    &nbsp;&nbsp;<asp:Label ID="lblsubtot" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="SHIPPING COST"></asp:Label>
&nbsp;<asp:Label ID="lblshippingcost" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="GRAND TOTAL"></asp:Label>
                    &nbsp;<asp:Label ID="lblgrand" runat="server" Font-Bold="True" ForeColor="Red" Text="Label"></asp:Label>
                </asp:Panel>
               
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
</table>
</asp:Content>

