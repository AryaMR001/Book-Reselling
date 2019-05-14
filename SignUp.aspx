<%@ Page Title="" Language="C#" MasterPageFile="~/SignUPINPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
             .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            width: 420px;
        }
        .auto-style4 {
            height: 20px;
            width: 420px;
        }
        .auto-style5 {
            width: 191px;
        }
        .auto-style6 {
            height: 20px;
            width: 191px;
        }
        .auto-style7 {
            width: 420px;
            height: 26px;
        }
        .auto-style8 {
            width: 191px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
            width: 116px;
        }
        .auto-style11 {
            width: 116px;
        }
        .auto-style12 {
            height: 20px;
            width: 116px;
        }
        .auto-style13 {
            width: 420px;
            height: 30px;
        }
        .auto-style14 {
            width: 191px;
            height: 30px;
        }
        .auto-style15 {
            width: 116px;
            height: 30px;
        }
        .auto-style16 {
            height: 30px;
        }
        .auto-style17 {
            width: 420px;
            height: 24px;
        }
        .auto-style18 {
            width: 191px;
            height: 24px;
        }
        .auto-style19 {
            width: 116px;
            height: 24px;
        }
        .auto-style20 {
            height: 24px;
        }
        .auto-style21 {
            height: 20px;
            width: 117px;
        }
        .auto-style22 {
            height: 26px;
            width: 117px;
        }
        .auto-style23 {
            height: 24px;
            width: 117px;
        }
        .auto-style24 {
            width: 117px;
        }
        .auto-style25 {
            height: 30px;
            width: 117px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="7">
                <asp:Label ID="Label11" runat="server" ForeColor="Red" Text=""><marquee behavior="scroll" direction="right">All The Field Marking With * Are Mandatory</marquee>
</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtName" runat="server" ForeColor="Black" Width="233px" placeholder="First Name" ></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtLastName" runat="server" ForeColor="Black" Width="233px" placeholder="Last Name"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Enter Your Name Properly" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style22">
                
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Enter Your Name Properly" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:RadioButton ID="rdbtnMale" runat="server" GroupName="Gender" Text="Male" />
            </td>
            <td class="auto-style19">
                <asp:RadioButton ID="rdbtnFemale" runat="server" GroupName="Gender" Text="Female" />
            </td>
            <td class="auto-style20">
                </td>
            <td class="auto-style23">
                </td>
            <td class="auto-style20">
                </td>
            <td class="auto-style20">
                </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtHname" runat="server" placeholder="House Name"  Width="233px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtSname" runat="server" placeholder="Street Name/Number" Width="233px"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtPin" runat="server" placeholder="PIN"  Width="233px"></asp:TextBox>
            </td>
            <td class="auto-style22" style="width: 281px;">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPin" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPin" Display="Dynamic" ErrorMessage="This ZIPcode Is Not Accepted" ForeColor="Red" ValidationExpression="^\d{6}$"></asp:RegularExpressionValidator>
                </i>&nbsp;</td>
            <td class="auto-style9">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtHname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtHname" Display="Dynamic" ErrorMessage="Enter Your Address Properly" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </i>&nbsp;</td>
            <td class="auto-style9">
                
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtSname" Display="Dynamic" ErrorMessage="Enter Your Street Name Properly" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtMobno" runat="server" placeholder="Mobile Number"  Width="233px"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMobno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMobno" Display="Dynamic" ErrorMessage="Enter Valid Number" ForeColor="Red" ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
            </td>
            <td class="auto-style8">
                
                <asp:DropDownList ID="ddlstate" runat="server" Height="22px" Width="141px" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Anthrapredesh</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlstate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="Label12" runat="server" ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td class="auto-style9"></td>
            <td class="auto-style22"></td>
            <td class="auto-style9"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                
                <asp:Label ID="Label6" runat="server" Text="District"></asp:Label>
            </td>
            <td class="auto-style5">
                
                <asp:DropDownList ID="ddldistrict" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddldistrict" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
               
                <asp:Label ID="Label9" runat="server" Text="Email ID"></asp:Label>
            </td>
            <td class="auto-style5">
               
                <asp:TextBox ID="txtemail" runat="server" placeholder="Email ID"  Width="233px"></asp:TextBox>
            </td>
            <td class="auto-style11">
                &nbsp;</td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email ID" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                
                <asp:Label ID="Label7" runat="server" Text="User Name"></asp:Label>
            </td>
            <td class="auto-style6">
                
                <asp:TextBox ID="txtxUname" runat="server" placeholder="User Name"  Width="233px"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtxUname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style21"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                
                <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style5">
                
                <asp:TextBox ID="txtPassword" runat="server"  placeholder="Password" Width="233px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label10" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style6">
                
                <asp:TextBox ID="txtCpassword" runat="server" placeholder="Re Enter Password"  Width="233px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCpassword" Display="Dynamic" ErrorMessage="Confirm Password Should same As Your Original Password" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14">
                 &nbsp;</td>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style16"></td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                 <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" Font-Bold="True" OnClick="btnSubmit_Click" style="height: 26px"/>
            </td>
            <td class="auto-style11">
                <asp:Button ID="btnCancel" runat="server" Text="CANCEL" Font-Bold="True" OnClick="btnCancel_Click"/>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

