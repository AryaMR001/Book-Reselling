<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Billing_Complete.aspx.cs" Inherits="Billing_Complete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 628px;
        }
        .auto-style2 {
            width: 371px;
        }
        .auto-style3 {
            width: 488px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 488px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 1035px;
            height: 23px;
        }
        .auto-style8 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table class="auto-style7">
        <tr>
            <td colspan="3" class="auto-style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC66FF" Text="BILLING INFORMATION"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600" Text="Personal Information"></asp:Label>
            </td>
            <td colspan="2" class="auto-style6">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600" Text="Order Information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
               
                <asp:Label ID="lblname" runat="server"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Order ID"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="lblorderid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lbladdress" runat="server"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblstate" runat="server"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="Sub Total"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="lblsubtot" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                            <asp:Label ID="lbldist" runat="server"></asp:Label>
                            
                        </td>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="Shipping Cost"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="lblshipping" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                            <asp:Label ID="lblphn" runat="server"></asp:Label>
                            
                        </td>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Text="Total Amout Payable"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ID="lbltot" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                            <asp:Label ID="lblemail" runat="server"></asp:Label>
                            
                        </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style4">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600" Text="Payment Information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" >
                <asp:Label ID="Label15" runat="server" Text="Card Number"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtcardnum" runat="server"  ></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtcardnum" ForeColor="Red"></asp:RequiredFieldValidator>
               
            </td>
            <td class="auto-style1">
               <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtcardnum" Display="Dynamic" ErrorMessage="This Card Nuber Is Not Acceptable" ForeColor="Red" ValidationExpression="^\d{16}$"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style3" >
                <asp:Label ID="Label16" runat="server" Text="Expired Date"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddlmonth" runat="server" AutoPostBack="True" Font-Bold="True" Height="26px" Width="172px">
                    <asp:ListItem>Month</asp:ListItem>
                    <asp:ListItem>January</asp:ListItem>
                    <asp:ListItem>February</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlmonth" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlyear" runat="server" AutoPostBack="True" Font-Bold="True" Height="26px" Width="172px">
                    <asp:ListItem>Year</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    <asp:ListItem>2022</asp:ListItem>
                    <asp:ListItem>2023</asp:ListItem>
                    <asp:ListItem>2024</asp:ListItem>
                    <asp:ListItem>2025</asp:ListItem>
                    <asp:ListItem>2026</asp:ListItem>
                    <asp:ListItem>2027</asp:ListItem>
                    <asp:ListItem>2028</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2030</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlyear" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" >
                <asp:Label ID="Label17" runat="server" Text="CVV" ></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtcvv" runat="server" 
                
                    ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcvv" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1"><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtcvv" Display="Dynamic" ErrorMessage="This is not valid nuber" ForeColor="Red" ValidationExpression="^\d{3}$"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="3" >
                <asp:CheckBox ID="chkbox" runat="server" Font-Bold="True" Font-Italic="True" Text="I Agree With The Privacy Policy By Proceeding With This Payment" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" >
                <asp:Label ID="lblprint" runat="server" Visible="False" Font-Bold="True" Font-Size="X-Large" ForeColor="#9933FF"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="lblcheck" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#9933FF" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" >
                <asp:Button ID="btnpay" runat="server" Font-Bold="True" Text="Make Payment" OnClick="btnpay_Click" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="btncancel" runat="server" Font-Bold="True" Text="Cancel Payment" OnClick="btncancel_Click" />
            </td>
            <td class="auto-style1">
                <asp:Label ID="lblsample" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
