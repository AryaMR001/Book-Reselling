<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        table{border:2px solid black;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#9966FF"></asp:Label>
    <asp:DataList ID="DataList1" runat="server" Visible="False" RepeatColumns = "6" RepeatDirection="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" >
            <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align:center"><%#Eval("Bok_Name")%></td><br />
                </tr>
                <tr>
                   
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
                        <asp:ImageButton ID="ImageButton2" runat="server"  ImageAlign="Middle" ImageUrl="~/Images/CTA-Add-to-Cart-Button-JPG-Graphic-Cave-1080x628.jpg" Height="100px" Width="200px" />

                    </td>
                </tr>
            </table>
        </ItemTemplate>
                  </asp:DataList>
    
</asp:Content>

