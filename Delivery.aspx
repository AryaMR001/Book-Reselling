<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Delivery.aspx.cs" Inherits="Delivery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        table{
              width:100%;
              height:100%;
              

        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            height: 20px;
        }
    </style>
    <table >
        <tr><td>
                <asp:Label ID="Label2" runat="server" Text="DELIVERY INFORMATION" ForeColor="#CC00FF" Font-Bold="True"></asp:Label>
            </td></tr>
        <tr>
            
            <td>
                <table style="background-color:gainsboro">
                    <tr>
                        <td>Your default address is selected here, <br />if you would like the items to be delivered to another address,<br /> then please change the address by clicking the Change Address button..</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="CHANGE ADDREES" Font-Bold="True" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="background-color:gainsboro;">
                    <tr>
                        <td>
                            
                            <asp:Label ID="Label1" runat="server" Text="DELIVERY ADDRESS:" Font-Bold="True"></asp:Label>
                           

                        </td>
                        
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="lbladdress" runat="server"></asp:Label>
                            
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="lblstate" runat="server"></asp:Label>
                            
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="lbldist" runat="server"></asp:Label>
                            
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="lblphn" runat="server"></asp:Label>
                            
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="lblemail" runat="server"></asp:Label>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                            
                        </td>

                    </tr>
                </table>
                <table>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton3" runat="server" Height="53px" ImageUrl="~/images/back.png" Width="156px" OnClick="ImageButton3_Click" />
            </td>
            <td class="auto-style5">
                
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/continue.jpg" OnClick="ImageButton2_Click" Width="157px" />
            </td>
        </tr>
    </table>
</asp:Content>

