<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="BookData.aspx.cs" Inherits="BookData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
            width: 429px;
            text-align: left;
        }
        .auto-style3 {
            height: 33px;
            width: 398px;
        }
        .auto-style4 {
            width: 398px;
        }
       
        .auto-style6 {
            width: 76px;
        }
        .auto-style10 {
            width: 429px;
            height: 30px;
            text-align: left;
        }
        .auto-style11 {
            width: 76px;
            height: 30px;
        }
        .auto-style12 {
            height: 30px;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style14 {
            width: 398px;
            height: 20px;
        }
        .auto-style15 {
            width: 429px;
            height: 20px;
        }
        .auto-style16 {
            width: 76px;
            height: 20px;
        }
        .auto-style17 {
            height: 20px;
        }
        .auto-style18 {
            width: 154px;
        }
        .auto-style19 {
            height: 30px;
            width: 154px;
        }
        .auto-style20 {
            height: 20px;
            width: 154px;
        }
        .auto-style21 {
            width: 250%;
            float: left;
            height: 20px;
            border-radius: 5px;
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            color: #9DBFAF;
           
            margin-left: 0px;
            padding: 5px;
        }
        .auto-style22 {
            margin-left: 0px;
        }
        .auto-style23 {
            text-align: justify;
        }
        .auto-style24 {
            width: 398px;
            height: 30px;
            text-align: left;
        }
        .auto-style25 {
            height: 33px;
            width: 398px;
            text-align: left;
        }
        .auto-style26 {
            width: 398px;
            text-align: left;
        }
        .auto-style27 {
            width: 398px;
            height: 26px;
            text-align: left;
        }
        .auto-style28 {
            text-align: left;
        }
        .auto-style29 {
            width: 429px;
            height: 26px;
            text-align: left;
        }
        .auto-style30 {
            height: 30px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style21">
        <tr>
            <td class="auto-style25">
                <asp:Label ID="Label1" runat="server" Text="Book Name" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style2">
                
                <asp:TextBox ID="txtBookname" runat="server" OnTextChanged="TextBox1_TextChanged" placeholder="Book Name" CssClass="auto-style22"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBookname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td colspan="3" rowspan="6">
                <asp:Image ID="Image1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Label2" runat="server" Text="Author" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style28">
                
                <asp:TextBox ID="txtOtherauthor" runat="server" placeholder="Author Name" CssClass="auto-style22"></asp:TextBox>
                </i>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOtherauthor" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtOtherauthor" Display="Dynamic" ErrorMessage="Enter The Name properly" ForeColor="Red" ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Label3" runat="server" Text="Edition" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:TextBox ID="txtEdition" runat="server" placeholder="Edition"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEdition" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Label4" runat="server" Text="Category" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style28">
                
                
                
                <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" CssClass="auto-style22">
                    <asp:ListItem>--Category--</asp:ListItem>
                    <asp:ListItem>Biograpghy</asp:ListItem>
                    <asp:ListItem>AutoBiography</asp:ListItem>
                    <asp:ListItem>Poetry</asp:ListItem>
                    <asp:ListItem>Novel</asp:ListItem>
                    <asp:ListItem>Short Story</asp:ListItem>
                    <asp:ListItem>Kids</asp:ListItem>
                    <asp:ListItem>Cooking</asp:ListItem>
                    <asp:ListItem>Edu&amp;Reference</asp:ListItem>
                    <asp:ListItem>History</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlcategory" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Label5" runat="server" Text="Publication" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style29">
                
                <asp:TextBox ID="txtOtherpublication" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtOtherpublication" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Label6" runat="server" Text="Price" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:TextBox ID="txtPrice" runat="server" placeholder="Price"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPrice" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="Enter Valid Price" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                <asp:Label ID="Label7" runat="server" Text="Quantity" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style30">
                <asp:TextBox ID="txtQnty" runat="server" placeholder="Quantity"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtQnty" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtQnty" ErrorMessage="Enter Valid Quantity" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Label8" runat="server" Text="Condition" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style23">
                <asp:DropDownList ID="ddlCondition" runat="server" CssClass="auto-style22" Width="116px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>New</asp:ListItem>
                    <asp:ListItem>Old</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlCondition" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">
                     <asp:Label ID="Label9" runat="server" Text="Number Of Pages" ForeColor="Black"></asp:Label></td>
            <td class="auto-style10">
                <asp:TextBox ID="txtPages" runat="server" placeholder="Page" OnTextChanged="txtPages_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPages" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPages" Display="Dynamic" ErrorMessage="Enter Numbre Of Page Properly" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style14">
                </td>
            <td class="auto-style15"></td>
            <td class="auto-style16"></td>
            <td class="auto-style17"></td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:FileUpload ID="FileUpload" runat="server" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="btnUpload" runat="server" Text="UpLoad" OnClick="btnUpload_Click" />
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2" rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;<asp:Button ID="txtbook" runat="server" Font-Bold="True" OnClick="txtbook_Click" Text="ADD BOOK" />
            &nbsp; 
                </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16"></td>
            <td class="auto-style17"></td>
            <td class="auto-style20"></td>
        </tr>
    </table>
</asp:Content>

