<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="User_Profile.aspx.cs" Inherits="User_Profile" %>

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
           
    <br />
    <table>
        <tr style="border-color:darkgrey">
          <td id="main"><img src="Images/settings.png" height="15px" width="15px"/>PROFILE</td>
        </tr>
        <tr>
            <td><a href="#">Edit Account Information</a></td>
            
        </tr>
        <tr><td><a href="#">Change Password</a></td></tr>
        <tr style="border-color:darkgrey"><td id="main">AS BUYER</td></tr>
        <tr><td><a href="#">Show All My Order</a></td></tr>
        <tr><td><a href="#">My Book Shelf</a></td></tr>
        <tr><td><a href="#">Request To Seller</a></td></tr>
        <tr style="border-color:darkgrey"><td id="main">AS SELLER</td></tr>
        <tr><td><a href="#">Sales status</a></td></tr>
        <tr><td><a href="#">My Book Account</a></td></tr>
        <tr><td><a href="#">Request From Buyer</a></td></tr>
        <tr><td><a href="#">Add Book</a></td></tr>
    </table>
   
         


    
</asp:Content>

