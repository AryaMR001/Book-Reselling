<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Browse_Book.aspx.cs" Inherits="Browse_Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: left;
        }
        table{
            border:2px solid black
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <table style="width:100%;background-color:#d9b3ff;" >
                                    <tr>
                                        <td>YOUR REQUESTED BOOK</td>
                                        <td>
                                            <asp:TextBox ID="txtcount" runat="server" CssClass="txtBoxBg" AutoPostBack="True" placeholder="Your Shopping Cart Items" ReadOnly="true" Font-Bold="True" Font-Italic="True"></asp:TextBox>
                                            <asp:TextBox ID="txtprice" runat="server" CssClass="auto-style5"   placeholder="Total Price" OnTextChanged="txtprice_TextChanged"></asp:TextBox>
                                            </td>
                                    </tr></table>
    <asp:Label ID="lblprint" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" ForeColor="#9933FF" Visible="False"></asp:Label>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns = "3" RepeatDirection="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" Height="113px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="AddCart">
            <ItemTemplate>
                <table>
                    <tr><td>Author:<%#Eval("Author_Name")%></td> <br />
                        <td>Publisher:<%#Eval("Publication") %></td>
                        
                        
                    </tr>
                    <tr>
                         <td>Edition:<%#Eval("Edition") %></td><br />
                           <td>Condition:<%#Eval("Condition") %></td>
                        
                      </tr>
                    <tr>
                        <td>Category:<%#Eval("Category") %></td><br />
                        <td>Page Number:<%#Eval("Page_NO") %></td>
                    </tr>
                     <tr>
                                        <td style="text-align:center;visibility:hidden"><%#Eval("Book_ID") %></td>

                                    </tr>
                    <tr><td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Book_Image") %>' Height="200px" Width="200px" />

                        </td>
                        <td><asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Images/CTA-Add-to-Cart-Button-JPG-Graphic-Cave-1080x628.jpg" Height="100px" Width="200px"  CommandName="Add"  CommandArgument='<%#Eval("Book_ID") %>' /></td>
                    </tr>
                    <tr>
                    <td style="text-align:center"><asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Middle" ImageUrl="~/Images/93954_thumb.png" Height="20px" Width="20px" />
                         <%#Eval("Price") %>
                    </td>
                </tr>
                    
                </table>
            </ItemTemplate>
            
        </asp:DataList>
           
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#9966FF"></asp:Label>
</asp:Content>

