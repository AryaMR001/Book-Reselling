<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Cancel-next.aspx.cs" Inherits="Cancel_next" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
        <tr>
            <td> <asp:Label ID="Label11" runat="server" ForeColor="#009933" Text="&lt;marquee behavior=&quot;scroll&quot; direction=&quot;right&quot;&gt;WAITING FOR PAYMENT&lt;/marquee&gt;" Font-Bold="True" Font-Italic="True"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="YOUR PAYMENT PROCRDURES ARE SUCESSFULLY COMPLETED.WE ARE WAITING FOR PAYMENT" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

