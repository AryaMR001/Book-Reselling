<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit-email.aspx.cs" Inherits="Edit_email" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        table{
            border:solid  black 2px;
           
        }
        .auto-style3 {
            width: 471px;
        }
        .auto-style4 {
            text-align: center;
            width: 471px;
        }
        table{   
    margin: 3px 0 0 265px;}
        .auto-style5 {
            margin-right: 39;
        }
        .auto-style6 {
            width: 207px;
        }
    </style>
      <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>

</head>
<body>
    <form id="form1" runat="server">
    
    <div>
    <table class="auto-style1" style=" width: 58%;">
        <tr>
            <td colspan="2" style="background-color:black;color:white" class="auto-style2">YOU CAN CHANGE YOUR EMAIL ADDRESS HERE</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
              
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="New Email ID"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtemail" runat="server" CssClass="auto-style5"></asp:TextBox>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email ID" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style4">
                <asp:Button ID="btncomplete" runat="server" Font-Bold="True" Text="COMPLETE" OnClick="btncomplete_Click" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btncancel" runat="server" Font-Bold="True" Text="CANCEL" OnClick="btncancel_Click" />
            </td>
        </tr>
        
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblprint" runat="server" Font-Bold="True" ForeColor="#9933FF" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
