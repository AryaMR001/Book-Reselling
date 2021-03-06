﻿<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        table{border:2px solid  black;}
        #ContentPlaceHolder1_DataList1{margin: 0 0 0 39px;}
         
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width:100%;background-color:#d9b3ff;" >
                                    <tr>
                                        <td>OUR LASTEST BOOKS</td>
                                        <td>
                                            <asp:TextBox ID="txtcount" runat="server" CssClass="txtBoxBg" AutoPostBack="True" style="background-image:url(100.JPG)" placeholder="Your Shopping Cart Items" ReadOnly="true"></asp:TextBox>
                                            </td>
                                        <td>
                                            <asp:TextBox ID="txtprice" runat="server" CssClass="auto-style5" OnTextChanged="txtprice_TextChanged"  placeholder="Total Price"></asp:TextBox>
                                            </td>
                                    </tr></table>
    <asp:Label ID="lbldate" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:label runat="server" text="Label" ID="lblprint" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#9933FF" Visible="False"></asp:label>

    <asp:DataList ID="DataList1" runat="server" RepeatColumns = "6" RepeatDirection="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" OnItemCommand="AddCart" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align:center"><%#Eval("Bok_Name")%></td><br />
                </tr>
                <tr>
                    <tr>
                                        <td style="text-align:center;visibility:hidden"><%#Eval("Book_ID") %></td>

                                    </tr>
                    <td>
                       <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Book_Image") %>' Height="200px" Width="200px"/>
                    </td>
                </tr>
                
                <tr>
                    <td style="text-align:center"><asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Middle" ImageUrl="~/Images/93954_thumb.png" Height="20px" Width="20px" />
                         <%#Eval("Price") %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton2" runat="server"  ImageAlign="Middle" ImageUrl="~/Images/CTA-Add-to-Cart-Button-JPG-Graphic-Cave-1080x628.jpg" Height="100px" Width="200px"  CommandName="Add"  CommandArgument='<%#Eval("Book_ID") %>' />

                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>

