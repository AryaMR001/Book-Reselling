<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="NewBook.aspx.cs" Inherits="NewBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
        table{border:2px solid black;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns = "6">
                    <ItemTemplate>
                        <table>
                                    <tr>
                                        <td style="text-align:center"><%#Eval("Bok_Name") %></td>

                                    </tr><br />
                        <tr>
                            <td><asp:Image ID="Image1" runat="server"   ImageUrl='<%#Eval("Book_Image") %>' Height="200px" Width="200px"/>
                                </td>
                         
                        </tr>
                           
                        <tr><td style="text-align:center"> <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/93954_thumb.png" Height="20px" Width="20px" ImageAlign="Middle" />
                            <%#Eval("Price") %>
                            </td>
                            

                        </tr>
                        <tr><td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/CTA-Add-to-Cart-Button-JPG-Graphic-Cave-1080x628.jpg" Height="100px" Width="200px" ImageAlign="Middle" />

                            </td></tr>
                                  </table></ItemTemplate>
                </asp:DataList>
            
</asp:Content>

