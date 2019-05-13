<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: left;
        }
        table{border:2px solid black;
               border-spacing: 10px;
        }
        #main{border: 1px solid grey;
              background-color:mediumpurple;
              font-weight:bold;
               
        }
        td{border-bottom: 1px solid #ddd;}
        a{text-decoration:none}
        tr:hover {background-color: #f2f2f2;}
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style5">
        <br />
        <html>
<head>

<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
</head>
<body>
     <table>
        <tr style="border-color:darkgrey">
          <td id="main"><i class='fas fa-user' >    PROFILE</i></td>
        </tr>
        <tr>
            <td><a href="#"><i class='fas fa-edit'> Edit Account Information</i></a></td>
            
        </tr>
        <tr><td><a href="#"><i class='fas fa-lock-open'> Change Password</i></a></td></tr>
        <tr style="border-color:darkgrey"><td id="main"><i class='fas fa-cart-plus'>     AS BUYER </i></td></tr>
        <tr><td><a href="#"><i class='far fa-eye'>  Show All My Order</i></a></td></tr>
        <tr><td><a href="#"><i class='fas fa-book-open'>  My Book Shelf</i></a></td></tr>
        <tr><td><a href="#"> <i class='fas fa-user-plus'> Request To Seller</i></a></td></tr>
        <tr style="border-color:darkgrey"><td id="main"><i class='fas fa-rupee-sign'>    AS SELLER</i></td></tr>
        <tr><td><a href="#"><i class='fas fa-battery-three-quarters'> Sales status </i></a></td></tr>
        <tr><td><a href="#"><i class="fa fa-book">  My Book Account</i></a></td></tr>
        <tr><td><a href="#"><i class='fas fa-user-tag'>Request From Buyer</i></a></td></tr>
        <tr><td><a href="#"><i class="fa fa-plus-circle">  Add Book</i></a></td></tr>
    </table>
   
</body></html>
    </p>
</asp:Content>

