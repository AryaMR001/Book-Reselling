<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeliveryStatus.aspx.cs" Inherits="DeliveryStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 523px;
        }
        .auto-style3 {
            width: 523px;
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 523px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 523px;
            text-align: center;
            height: 69px;
        }
        .auto-style8 {
            height: 69px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="auto-style1" style="border:solid 2px black">
            <tr>
                <td colspan="2" style="background-color:black;color:white;text-align:center">SET YOUR CUSTOMER DELIVERY STATUS HERE</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Select Your Customer" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlid" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="color:orange;text-align:center;font-weight:500" class="auto-style6">Choose Your Status</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:RadioButton ID="rbtnpacked" runat="server" GroupName="delivery" Text="Packed" />
                </td>
                <td class="auto-style8">
                    <asp:Image ID="Image1" runat="server" Height="65px" ImageUrl="~/images/pack.png" Width="139px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:RadioButton ID="rbtndelivered" runat="server" GroupName="delivery" Text="Delivered" />
                </td>
                <td>
                    <asp:Image ID="Image3" runat="server" Height="106px" ImageUrl="~/images/dd.png" Width="141px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:RadioButton ID="rbtncomplete" runat="server" GroupName="delivery" Text="Complete" />
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="65px" ImageUrl="~/images/complete.jpg" Width="139px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Button ID="btnsave" runat="server" Text="SAVE" style="border-radius:8px" Font-Bold="True" OnClick="btnsave_Click"/>
                    <br />
                    <asp:Label ID="lblprint" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#9933FF" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
