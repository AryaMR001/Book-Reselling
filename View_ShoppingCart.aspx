<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="View_ShoppingCart.aspx.cs" Inherits="View_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: left;
        }
        .navbar {
  overflow: hidden;
  background-color: #d9b3ff;
  height: 40px;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
.navbar a:hover{
  background-color:palevioletred;
}
        .auto-style6 {
            width: 175px;
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="navbar">
  <a href="#" class="auto-style6"><b>Remove Selected Books</b></a>
  <a href="#" class="auto-style6"><b>Update Cart</b></a>
  <a href="#" class="auto-style6" style="float:right"><b>Continue Shopping</b></a>
   <a href="#" class="auto-style6" style="float:right"><b>Checkout</b></a>
     </div>
    <div style="margin:36px 0 0 155px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="991px">
    <Columns>
        <asp:BoundField DataField="Bok_Name" HeaderText="Book Name" />
        <asp:BoundField DataField="Author_Name" HeaderText="Author" />
        <asp:BoundField DataField="Edition" HeaderText="Edition" />
        <asp:BoundField DataField="Category" HeaderText="Category" />
        <asp:BoundField DataField="Publication" HeaderText="Publication" />
        <asp:BoundField DataField="Price" HeaderText="Price/item" />
        <asp:ImageField DataImageUrlField="Book_Image" HeaderText="Book Image">
            <ControlStyle Height="70px" Width="90px" />
        </asp:ImageField>
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="Gray" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" /><RowStyle HorizontalAlign="Center" />
</asp:GridView></div>
</asp:Content>

