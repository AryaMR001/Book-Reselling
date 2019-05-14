<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Edit-shipping-add.aspx.cs" Inherits="Edit_shipping_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 157px;
    }
    .auto-style6 {
        width: 158px;
    }
    .auto-style8 {
        width: 535px;
    }
    .auto-style9 {
        width: 143px;
    }
    .auto-style11 {
        width: 373px;
    }
    .auto-style12 {
        width: 391px;
    }
    .auto-style13 {
        width: 986px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="auto-style13">
    <tr>
        <td colspan="4">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="New Address Book Entry" Font-Size="Large" ForeColor="#9933FF"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style12"></td>
        <td class="auto-style11"></td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="txtHname" runat="server" ></asp:TextBox>
        </td>
        <td class="auto-style11">
            <asp:TextBox ID="txtsreet" runat="server" ></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:TextBox ID="txtpin" runat="server" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label3" runat="server" Text="State"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="txtstate" runat="server" ></asp:TextBox>
        </td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label5" runat="server" >District</asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="txtdist" runat="server" ></asp:TextBox>
        </td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label7" runat="server" Text="Contact number" ></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="txtphn" runat="server" ></asp:TextBox>
        </td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="txtemail" runat="server"  ></asp:TextBox>
        </td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:ImageButton ID="ImageButton3" runat="server" Height="63px" ImageUrl="~/images/back.png" OnClick="ImageButton3_Click" Width="138px" />
        </td>
        <td class="auto-style12">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="EDIT" />
        </td>
        <td class="auto-style11">
            <asp:Button ID="btncancel" runat="server" Font-Bold="True" OnClick="btncancel_Click" Text="CANCEL" />
        </td>
        <td class="auto-style8">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/continue.jpg" OnClick="ImageButton2_Click" Width="157px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style17"></td>
        <td class="auto-style12">
            <asp:Label ID="lblprint" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#CC00FF" Text="Label" Visible="False"></asp:Label>
        </td>
        <td class="auto-style11"></td>
        <td class="auto-style8"></td>
    </tr>
</table>
</asp:Content>

