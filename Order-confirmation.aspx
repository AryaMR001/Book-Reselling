<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Order-confirmation.aspx.cs" Inherits="Order_confirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 600px;
        }
        .auto-style8 {
            height: 23px;
            width: 600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#9933FF" Text="ORDER CONFIRMATION" style="margin: 0 0 0 319px;"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
      <tr>
          <td>
              <asp:Label ID="lbldate" runat="server" Text="Label" Visible="False"></asp:Label>

          </td>
      </tr>
        <tr>
            <td class="auto-style7">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="502px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin:0 0 0 359px" >
                    <Columns>
                        <asp:BoundField DataField="Bok_Name" HeaderText="Book Name" />
                        <asp:BoundField DataField="Author_Name" HeaderText="Author Name" />
                        <asp:BoundField DataField="Price" HeaderText="Price" />
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
                     <EmptyDataTemplate>Your Shopping Cart Is Empty...Add Item To Cart For Enjoy Shopping</EmptyDataTemplate>
                     
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="lblsh" runat="server" Font-Bold="True" Text="Sub Total" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="lblsubtot" runat="server" Font-Bold="True" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lblship" runat="server" Font-Bold="True" Text="Shipping Cost" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblshipping" runat="server" Text="Label" Font-Bold="True" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lblgr" runat="server" Font-Bold="True" Text="Grand Total" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblgrandtot" runat="server" Text="Label" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><asp:ImageButton ID="ImageButton3" runat="server" Height="44px" ImageUrl="~/images/back.png" Width="129px" OnClick="ImageButton3_Click" /></td>
            <td colspan="2">
                
                <asp:ImageButton ID="ImageButton2" runat="server" Height="46px" ImageUrl="~/images/continue.jpg" OnClick="ImageButton2_Click" Width="167px" />
            </td>
        </tr>
    </table>
</asp:Content>

