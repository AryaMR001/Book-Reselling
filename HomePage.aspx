<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/w3css/3/w3.css">
    <style>
        #name{
            font-family:Monotype Corsiva;
            font-size:48px;
            color:mediumpurple;
        }
        .topnav {
  overflow: hidden;
  background-color: #333;
  margin: 29px 0px 0px 0px;
}
        </style>
</head>
<body style="margin:0px 0px 0px 0px">
    <form id="form1" runat="server">
        <div class="row">
            <div class="column" style="background-color:lightgrey;margin: 0 -8px 0px -7px;height: 24px;    padding: 8px 6px 5px 313px;">
              <a  href="SignUp.aspx" style="text-decoration:none">Sign Up<i class="fa fa-user-plus"></i></a>
               <a href="Login.aspx" style="text-decoration:none;margin: 0 0 0 27px;">Sign In<i class="fa fa-sign-in" "></i></a>
                <a href="#" style="text-decoration:none;margin: 0 0 0 27px;">Customer Care<i class="fa fa-phone"></i>+91 9388510504</a>
                 <a href="#" style="text-decoration:none;margin: 0 0 0 27px;">Shopping Cart<i class="fa fa-shopping-cart"></i></a>
                    <a href="#" style="text-decoration:none;margin: 0 0 0 27px;">Wish List<i class="fa fa-heart"></i></a>
            </div>

        </div>
        <div class="row">
            <div class="column">
                <img src="images/4f8f4849d7ca6c6d81964c3c61f9d085.gif" style="width: 194px; height: 132px;margin: 0 0 -39px 0px;" />
                <a id="name">ONLINE BOOK SELLING</a></div></div>
    <div>
    
    </div>
         <div class="row">
            <div class="column">
        <div class="topnav">
  <a href="Home.aspx"><i class="fa fa-home" style="color:white;font-size: 31px;"></i></a></div></div>
        <div class="row">
            <div class="column">
        <section>
            
            <img class="mySlides"  src="Images/0_RyelO1ba8jF-0iBy_.png" style="width:1080px;height:300px" />
            
            <img class="mySlides" src="images/Bookshop-Logo.jpg" style="width:1080px;height:300px" />
           
            
</section></div></div>
             
              <div class="row">
            <div class="column">
        <div class="topnav">
  <a href="Home.aspx"><i class="fa fa-home" style="color:white;font-size: 31px;"></i></a></div></div>
    </form>
    <script>
// Automatic Slideshow - change image every 3 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}
  x[myIndex-1].style.display = "block";
  setTimeout(carousel, 3000);
}
</script>
</body>
</html>
