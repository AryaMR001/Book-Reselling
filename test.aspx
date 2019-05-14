<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style4 {
            width: 322px;
            height: 24px;
            text-align: center;
        }
        .auto-style7 {
            height: 24px;
            text-align: center;
            width: 312px;
        }
        .auto-style10 {
            width: 322px;
            text-align: center;
            height: 26px;
        }
        .auto-style9 {
            width: 312px;
            text-align: center;
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
        .auto-style14 {
            margin-left: 7px;
        }
        .auto-style8 {
            width: 312px;
        }
        .auto-style3 {
            width: 322px;
        }
        .auto-style1 {
            width: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Name"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtname" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Address"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtaddress" runat="server" CssClass="auto-style14" TextMode="MultiLine" Width="123px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Contact Number"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtphn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="State"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label8" runat="server" Font-Size="Large" Text="District"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtdist" runat="server" Height="18px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label10" runat="server" Font-Size="Large" Text="Email ID"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#6600CC" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
