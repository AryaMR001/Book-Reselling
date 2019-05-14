<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="NewBook.aspx.cs" Inherits="NewBook" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        table{border:2px solid black;
                 

        }
        .txtBoxBg {
            background-image: url("100.jpg");
            background-repeat: no-repeat;
            background-position: left center;
        }
        #txtcount{text-align:center;}
        #ContentPlaceHolder1_DataList1{
             margin: 0 0 0 20px;
        }
    .auto-style5 {
        margin-left: 45px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
                <table style="width:100%;background-color:#d9b3ff;" >
                                    <tr>
                                        <td>OUR LASTEST BOOKS</td>
                                        <td>
                                            <asp:TextBox ID="txtcount" runat="server" CssClass="txtBoxBg" AutoPostBack="True" placeholder="Your Shopping Cart Items" ReadOnly="true" Font-Bold="True" Font-Italic="True"></asp:TextBox>
                                            <asp:TextBox ID="txtprice" runat="server" CssClass="auto-style5" OnTextChanged="txtprice_TextChanged"  placeholder="Total Price"></asp:TextBox>
                                            </td>
                                    </tr></table>
    <asp:Label ID="lblprint" runat="server" Text="Label" Font-Size="X-Large" Font-Bold="True" Visible="False" ForeColor="#CC00FF"></asp:Label>
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns = "6" Height="394px" OnItemCommand="AddCart">
                    <ItemTemplate>
                        <table >
                                   
                                     <tr>
                                        <td style="text-align:center"><%#Eval("Bok_Name") %></td>

                                    </tr>
                             <tr>
                                        <td style="text-align:center;visibility:hidden"><%#Eval("Book_ID") %></td>

                                    </tr>

                        <tr>
                            <td><asp:Image ID="Image1" runat="server"   ImageUrl='<%#Eval("Book_Image") %>' Height="200px" Width="200px"/>
                                </td>
                         
                        </tr>
                           
                        <tr><td style="text-align:center"> <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/93954_thumb.png" Height="20px" Width="20px" ImageAlign="Middle" />
                            <%#Eval("Price") %>
                            </td>
                            

                        </tr>
                        <tr><td>
                            <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Images/CTA-Add-to-Cart-Button-JPG-Graphic-Cave-1080x628.jpg" Height="100px" Width="200px" ImageAlign="Middle"  CommandName="Add"  CommandArgument='<%#Eval("Book_ID") %>' />
                            </td></tr>
                            
                                  </table></ItemTemplate>
                </asp:DataList>

    </asp:Content>

