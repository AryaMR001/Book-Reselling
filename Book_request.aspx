<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Book_request.aspx.cs" Inherits="Book_request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 258px;
        }
        .auto-style3 {
            width: 305px;
        }
        .auto-style4 {
            height: 23px;
            text-align: center;
        }
        .auto-style6 {
            width: 258px;
            text-align: center;
        }
        .auto-style7 {
            width: 305px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Book Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtBookname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBookname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Author Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAuthor" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Edition"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEdition" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnsend" runat="server" Font-Bold="True" OnClick="btnsend_Click" Text="Send Request" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="btnclear" runat="server" Font-Bold="True" OnClick="btnclear_Click" Text="Clear Request" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#6600CC" Text="Label" Visible="False"><marquee behavior="scroll" direction="right"></marquee>Your request is sended to sellers</asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
