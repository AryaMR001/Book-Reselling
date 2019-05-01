<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit-address.aspx.cs" Inherits="Edit_address" %>

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
        }
        .auto-style4 {
            width: 440px;
            text-align: center;
        }
.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="background-color:black;color:white" class="auto-style2">YOU CAN EDIT YOUR ADDRESS HERE</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="House Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txthname" runat="server" placeholder="Enter your house name"></asp:TextBox>
                    <i class="fa fa-sign-in" "></i></a>
                <a href="#" style="text-decoration:none;"><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txthname" Display="Dynamic" ErrorMessage="Enter Your Address Properly" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txthname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Street Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtstreet" runat="server" placeholder="Enter your street name"></asp:TextBox>
                    <i class="fa fa-sign-in" "></i></a>
                <a href="#" style="text-decoration:none;">
                
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtstreet" Display="Dynamic" ErrorMessage="Enter Your Street Name Properly" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]+$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtstreet" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Zip Code"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtzipcode" runat="server" placeholder="Enter your Zip code"></asp:TextBox>
                    <i class="fa fa-sign-in" "></i></a>
                <a href="#" style="text-decoration:none;"><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtzipcode" Display="Dynamic" ErrorMessage="This ZIPcode Is Not Accepted" ForeColor="Red" ValidationExpression="^\d{6}$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtzipcode" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btncomp" runat="server" Font-Bold="True" OnClick="btncomp_Click" Text="COMPLETE" />
                </td>
                <td>
                    <asp:Button ID="btncancel" runat="server" Font-Bold="True" OnClick="btncancel_Click" Text="CANCEL" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#9933FF" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
