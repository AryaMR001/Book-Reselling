<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Payment-method.aspx.cs" Inherits="Payment_method" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 465px;
        }
        .auto-style8 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style6" colspan="2">
                
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#9933FF" Text="PAYMENT METHOD"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image1" runat="server" Height="41px" ImageUrl="~/images/casho.png" Width="93px" />
            </td>
            <td class="auto-style8">
                <asp:RadioButton ID="rdbcash" runat="server" AutoPostBack="True" GroupName="cash" Text="Cash On Delivery" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image2" runat="server" Height="68px" ImageUrl="~/images/credi.jpg" Width="115px" />
            </td>
            <td class="auto-style8">
                <asp:RadioButton ID="rdbonline" runat="server" GroupName="cash" Text="Online Payment" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                
                <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" ImageUrl="~/images/back.png" Width="110px" OnClick="ImageButton3_Click" />
               
               
                
                 <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/continue.jpg" OnClick="ImageButton2_Click" Width="155px" />
              
            </td>
        </tr>
        <tr>
            <td>
                  <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#9933FF" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

