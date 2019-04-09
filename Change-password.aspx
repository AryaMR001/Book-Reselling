<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Change-password.aspx.cs" Inherits="Change_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 305px;
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
            height: 50px;
            margin-left: 40px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style2 {
            width: 624px;
            height: 177px;
        }
        .auto-style7 {
            width: 305px;
            text-align: center;
            height: 50px;
        }
        table{border:1px solid black;}
        </style>
    
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                
                <td class="auto-style6" colspan="2"><img src="Images/locking.jpg" class="auto-style2" /></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Current Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcpassword" runat="server" TextMode="Password" placeholder="Cureent Password.." border-radius="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="New Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnewpassword" runat="server" TextMode="Password" placeholder="New Password" border-radius="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnewpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Confirm Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnewcpassword" runat="server" TextMode="Password" placeholder="Re enter new password" border-radius="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnewcpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpassword" ControlToValidate="txtnewcpassword" ErrorMessage="Both new password and confirm password should be identical" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btnreset" runat="server" Font-Bold="True" OnClick="btnreset_Click" Text="Reset Password" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btncancel" runat="server" Font-Bold="True" OnClick="btncancel_Click" Text="Cancel" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:Label ID="lblprint" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#9966FF" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
