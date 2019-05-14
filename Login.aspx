<%@ Page Title="" Language="C#" MasterPageFile="~/SignUPINPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        table{border:2px black solid}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
       
   
   
       
    <html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}


.input-container {
    display: -ms-flexbox;
    display: flex;
    width: 107%;
    margin-bottom: 17px;
  
}
* {
    box-sizing: border-box;
}

.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 50%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 31%;
  opacity: 0.9;
 margin: 14px 0 0 -350px;
}

.btn:hover {
  opacity: 1;
}
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 464px;
    }
    .auto-style3 {
        width: 178px;
    }
    .auto-style5 {
        height: 244px;
        width: 487px;
    }
   
        .auto-style4 {
            font-size: large;
        }
           
</style>
</head>
<body>

     <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
           
        </tr>
        <tr>
            <td class="auto-style2" style="border-color:black" id="bor">
                 <img src="images/Bookshop-Logo.jpg" class="auto-style5" />
           
                <strong><em>
                <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style4" ForeColor="Red" Visible="False"></asp:Label>
                </em></strong>
            </td>
            <td class="auto-style3">&nbsp;
                <form action="/action_page.php" style="max-width:500px;margin:auto">
 
  <div class="input-container"style="margin: 0 0 0 -414px;">
      
    <i class="fa fa-user icon"></i>
      <asp:TextBox ID="txtUname" runat="server" placeholder="Username"></asp:TextBox>
   
  </div>

  
  
  <div class="input-container" style=" margin: 18px 0 0 -413px;">
    <i class="fa fa-key icon"></i>
      
      <asp:TextBox ID="txtPass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
   
  </div>
    
  <asp:Button ID="Button1" class="btn" runat="server" Text="SIGN IN" OnClick="Button1_Click" />
</form>

            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>

</body>
</html>

    <br />
    <br />
    <br />


</asp:Content>

 