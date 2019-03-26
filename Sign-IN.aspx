<%@ Page Title="" Language="C#" MasterPageFile="~/SignupINpage.master" AutoEventWireup="true" CodeFile="Sign-IN.aspx.cs" Inherits="Sign_IN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            width: 419px;
        }
       
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            text-align: center;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUname" runat="server" placeholder="User Name "></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="btnsignin" runat="server" Text="Sign IN" Width="103px" OnClick="Button1_Click" />
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server">Forgot Password.....?</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style5">
                <strong><em>
                <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style4" ForeColor="Red" Visible="False"></asp:Label>
                </em></strong>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

