<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Billing.aspx.cs" Inherits="Billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 401px;
        }
        .auto-style7 {
            width: 401px;
            height: 20px;
        }
        .auto-style8 {
            height: 20px;
        }
        .auto-style9 {
            width: 244px;
        }
        .auto-style10 {
            width: 244px;
            height: 20px;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style15 {
            height: 40px;
            text-align: center;
        }
        .auto-style16 {
            height: 20px;
            text-align: left;
        }
        .auto-style18 {
            width: 244px;
            height: 20px;
            text-align: center;
        }
        .auto-style19 {
            width: 244px;
            text-align: center;
        }
        .auto-style20 {
            width: 401px;
            height: 30px;
        }
        .auto-style21 {
            width: 244px;
            height: 30px;
        }
        .auto-style22 {
            text-align: left;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
        <tr>
            <td colspan="3" class="auto-style11">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC66FF" Text="BILLING INFORMATION"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600" Text="Personal Information"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600" Text="Order Information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
               
                <asp:Label ID="lblname" runat="server"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label4" runat="server" Text="Order ID"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lbladdress" runat="server"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lblstate" runat="server"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="Label6" runat="server" Text="Sub Total"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                            <asp:Label ID="lbldist" runat="server"></asp:Label>
                            
                        </td>
            <td class="auto-style10">
                <asp:Label ID="Label7" runat="server" Text="Shipping Cost"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                            <asp:Label ID="lblphn" runat="server"></asp:Label>
                            
                        </td>
            <td class="auto-style9">
                <asp:Label ID="Label8" runat="server" Text="Total Amout Payable"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                            <asp:Label ID="lblemail" runat="server"></asp:Label>
                            
                        </td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#FF6600" Text="Payment Information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" >
                <asp:Label ID="Label15" runat="server" Text="Card Number"></asp:Label>
            </td>
            <td class="auto-style19">
                <asp:TextBox ID="txtcardnum" runat="server"  placeholder="Enter Your 16 digit card number"></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtcardnum" ForeColor="Red"></asp:RequiredFieldValidator>
               
            </td>
            <td class="auto-style12">
               <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtcardnum" Display="Dynamic" ErrorMessage="This Card Nuber Is Not Acceptable" ForeColor="Red" ValidationExpression="^\d{16}$"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style20" >
                <asp:Label ID="Label16" runat="server" Text="Expired Date"></asp:Label>
            </td>
            <td class="auto-style21">
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
            <td class="auto-style22">
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
            <td class="auto-style7" >
                <asp:Label ID="Label17" runat="server" Text="CVV" ></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="txtcvv" runat="server" placeholder="Enter Your 3 digit cvv"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcvv" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style16"><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtcvv" Display="Dynamic" ErrorMessage="This is not valid nuber" ForeColor="Red" ValidationExpression="^\d{3}$"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="3" >
                <asp:CheckBox ID="chkbox" runat="server" Font-Bold="True" Font-Italic="True" Text="I Agree With The Privacy Policy By Proceeding With This Payment" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6" >
                <asp:Label ID="lblamount" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="Label19" runat="server" Text="(Total Amount Payable)" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" >
                <asp:Button ID="btnpay" runat="server" Font-Bold="True" Text="Make Payment" OnClick="btnpay_Click" />
            </td>
            <td class="auto-style9">
                <asp:Button ID="btncancel" runat="server" Font-Bold="True" Text="Cancel Payment" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

