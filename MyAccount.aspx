﻿<%@ Page Title="" Language="C#"  MasterPageFile="~/BookStore.master" AutoEventWireup="true"  CodeFile="MyAccount.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: left;
        }
       #table{border:2px solid black;
               border-spacing: 10px;
             
        }
        #main{border: 1px solid grey;
              background-color:mediumpurple;
              font-weight:bold;
               
        }
       #td{border-bottom: 1px solid #ddd;}
        a{text-decoration:none}
       
        
        .auto-style6 {
            width: 100%;
        }
        #main0{border: 1px solid grey;
              background-color:mediumpurple;
              font-weight:bold;
               
        }
                
        .auto-style7 {
            width: 373px;
        }
        .auto-style8 {
            width: 241px;
        }
                
        .auto-style9 {
            height: 296px;
            width: 525px;
        }
                
        .auto-style10 {
            height: 24px;
        }
                
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
   
</body>
        <table class="auto-style6">
            <tr>
                <td class="auto-style7">
     <table id="table">
        <tr style="border-color:darkgrey">
          <td id="main" id="td"><i class='fas fa-user' >    PROFILE</i></td>
        </tr>
         <tr><td id="td"><a href="View_profile.aspx" target="frame"><i class='far fa-eye'> View Profile</i></a></td></tr>
       <tr style="border-color:darkgrey" id="main0"><td id="main" id="td"><i class="far fa-edit" style="color:black"> <b>EDIT ACCOUNT</b></i>
           
           </td></tr>
         <tr><td id="td"><a href="Edit-address.aspx" target="frame" ><i class="fa fa-address-card"> Change Address </i></a></td></tr>
    
        <tr><td id="td"><a href="Edit-email.aspx" target="frame" ><i class="fa fa-envelope"> Change Email ID</i></a></td></tr>
        <tr><td id="td"><a href="Edit-phn.aspx" target="frame" ><i class="fa fa-phone">Change Phone Number</i></a></td></tr>
        <tr><td id="td"><a href="Change-password.aspx" target="frame"><i class='fas fa-lock-open'> Change Password</i></a></td></tr>
          
        <tr style="border-color:darkgrey"><td id="main0"><i class='fas fa-cart-plus'>     AS BUYER </i></td></tr>
        <tr><td id="td"><a href="Order-history.aspx" target="frame"><i class='far fa-eye'>  Show All My Order</i></a></td></tr>
        <tr><td id="td"><a href="Purchased-Book.aspx" target="frame"><i class='fas fa-book-open'>  My Book Shelf</i></a></td></tr>
        <tr><td id="td"><a href="Book_request.aspx" target="frame" > <i class='fas fa-user-plus'> Request To Seller</i></a></td></tr>
        <tr style="border-color:darkgrey"><td id="main0"><i class='fas fa-rupee-sign'>    AS SELLER</i></td></tr>
        <tr><td id="td"><a href="Sales-Status.aspx" target="frame"><i class='fas fa-battery-three-quarters'> Sales status </i></a></td></tr>
    
        <tr><td id="td"><a href="BookAccount.aspx" target="frame" ><i class="fa fa-book" >  My Book Account</i></a></td></tr>
            <tr><td id="td" class="auto-style10"><a href="#" target="frame"style="color:red" ><i class='fas fa-user-tag'>Request From Buyer</i></a></td></tr>
             <tr><td id="td" class="auto-style10"><a href="unread-request.aspx" target="frame" ><i class='fa fa-bell'>Read</i></a></td></tr>
                <tr><td id="td" class="auto-style10"><a href="ViewRequest.aspx" target="frame" ><i class='fa fa-bell'>New</i></a></td></tr>

            <tr><td id="td"><a href="DeliveryStatus.aspx"  target="frame"><i class='fas fa-battery-three-quarters'> Set status </i></a></td></tr> 
           <asp:panel runat="server" ID="pnladmin" Visible="False">
                 <tr style="border-color:darkgrey"><td id="main0"><i class='fas fa-rupee-sign'>    AS ADMIN</i></td></tr>
        
    
        <tr><td id="td"><a href="Feedback-view.aspx" target="frame" ><i class="far fa-eye" > View Feedback</i></a></td></tr>
                 <tr><td id="td"><a href="Admin-vieworder.aspx" target="frame"><i class='far fa-eye'> View All Order </i></a></td></tr>
            </asp:panel>
    </table>
   
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td><iframe  name="frame" class="auto-style9"   style="width: 714px;height: 568px;border:0px"></iframe>
                </td>
                

               
            </tr>
            </table>
            
        </html>
        
    </p>
</asp:Content>

