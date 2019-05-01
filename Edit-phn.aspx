<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit-phn.aspx.cs" Inherits="Edit_phn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        table{border:solid black 2px;}
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 23px;
        }
        .auto-style3 {
            width: 448px;
        }
        .auto-style4 {
            width: 448px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
        <br />
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="background-color:black;color:white;" class="auto-style2">YOU CAN EDIT YOUR PHONE NUMBER HERE</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="New Phone Numer"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtphn" runat="server" placeholder="Enter your new phone number"></asp:TextBox>
                    
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphn" Display="Dynamic" ErrorMessage="Enter Valid Number" ForeColor="Red" ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtphn" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btncomp" runat="server" Font-Bold="True" Text="COMPLETE" OnClick="btncomp_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btncancel" runat="server" Font-Bold="True" Text="CANCEL" OnClick="btncancel_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">
                    <asp:Label ID="lblprint" runat="server" Font-Bold="True" ForeColor="#9933FF" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
