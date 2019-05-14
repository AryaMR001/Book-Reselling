<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Delivery_update.aspx.cs" Inherits="Delivery_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
            width: 341px;
        }
    .auto-style7 {
            width: 204px;
        }
    .auto-style9 {
        width: 341px;
        height: 20px;
    }
    .auto-style10 {
        width: 204px;
        height: 20px;
    }
    .auto-style12 {
        height: 20px;
    }
    .auto-style13 {
        width: 341px;
        height: 64px;
    }
    .auto-style14 {
        width: 204px;
        height: 64px;
    }
    .auto-style16 {
        height: 64px;
    }
    .auto-style17 {
        width: 341px;
        height: 32px;
    }
    .auto-style18 {
        width: 204px;
        height: 32px;
    }
    .auto-style20 {
        height: 32px;
    }
        .auto-style21 {
            width: 225px;
            height: 20px;
        }
        .auto-style22 {
            width: 225px;
        }
        .auto-style23 {
            width: 225px;
            height: 64px;
        }
        .auto-style24 {
            width: 225px;
            height: 32px;
        }
        .auto-style25 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
    <tr>
        <td colspan="4">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="New Address Book Entry" Font-Size="Large" ForeColor="#9933FF"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style10"></td>
        <td class="auto-style21"></td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtHname" runat="server" placeholder="House Name"></asp:TextBox>
        </td>
        <td class="auto-style22">
            <asp:TextBox ID="txtsreet" runat="server" placeholder="Street"></asp:TextBox>
        </td>
        <td class="auto-style25">
            <asp:TextBox ID="txtpin" runat="server" placeholder="Pin Code"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label3" runat="server" Text="State"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtstate" runat="server"  placeholder="State"></asp:TextBox>
        </td>
        <td class="auto-style22">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label5" runat="server" Text="District" ></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtdist" runat="server" placeholder="District"></asp:TextBox>
        </td>
        <td class="auto-style22">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label7" runat="server" Text="Contact number" ></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtphn" runat="server" placeholder="Contact Number"></asp:TextBox>
        </td>
        <td class="auto-style22">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtemail" runat="server"  placeholder="Email id"></asp:TextBox>
        </td>
        <td class="auto-style22">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:ImageButton ID="ImageButton3" runat="server" Height="63px" ImageUrl="~/images/back.png" OnClick="ImageButton3_Click" Width="138px" />
        </td>
        <td class="auto-style14">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="EDIT" />
        </td>
        <td class="auto-style23">
            <asp:Button ID="btncancel" runat="server" Font-Bold="True" OnClick="btncancel_Click" Text="CANCEL" />
        </td>
        <td class="auto-style16">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/continue.jpg" OnClick="ImageButton2_Click" Width="157px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style17"></td>
        <td class="auto-style18">
            <asp:Label ID="lblprint" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#CC00FF" Text="Label" Visible="False"></asp:Label>
        </td>
        <td class="auto-style24"></td>
        <td class="auto-style20"></td>
    </tr>
</table>
</asp:Content>

