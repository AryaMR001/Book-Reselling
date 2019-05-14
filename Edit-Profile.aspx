<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit-Profile.aspx.cs" Inherits="Edit_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 322px;
        }
        .auto-style4 {
            width: 322px;
            height: 24px;
            text-align: center;
        }
        .auto-style5 {
            height: 24px;
        }
        .auto-style7 {
            height: 24px;
            text-align: center;
            width: 312px;
        }
        .auto-style8 {
            width: 312px;
        }
        .auto-style9 {
            width: 312px;
            text-align: center;
            height: 26px;
        }
        .auto-style10 {
            width: 322px;
            text-align: center;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            width: 322px;
            text-align: center;
        }
        .auto-style13 {
            width: 312px;
            text-align: center;
        }
        table{border:1px solid black;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3" style="background-color:black">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Your Profile" font-family="Bradley Hand ITC" BackColor="Black" ForeColor="#9900FF"></asp:Label>
                </td>
            </tr>
                
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label2" runat="server" Text="&lt;marquee behavior=&quot;scroll&quot; direction=&quot;right&quot;&gt;You Can't Edit Your Name And Gender&lt;/marquee&gt;" ForeColor="#9900FF"></asp:Label>
                </td>
            </tr>
            <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Name"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtname" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Address"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="167px" AutoPostBack="True"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Contact Number"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtphn" runat="server" AutoPostBack="True" OnTextChanged="txtphn_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="State"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtstate" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label8" runat="server" Font-Size="Large" Text="District"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtdist" runat="server" Height="18px" AutoPostBack="True"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label10" runat="server" Font-Size="Large" Text="Email ID"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtemail" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#6600CC" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="btnedit" runat="server" Font-Bold="True" OnClick="btnedit_Click" Text="EDIT" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="CLEAR" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
