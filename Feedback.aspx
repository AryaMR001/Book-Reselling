<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style7 {
            text-align: center;
            height: 30px;
        }
        .auto-style8 {
            height: 8px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="We Would Like Your Feedback To Improve Our Website" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="What Is Your Opinion About This Page..?" ForeColor="#33CC33"></asp:Label>
            </td>
        </tr>
        <tr>
            
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                
                <asp:RadioButton ID="btnfentastic" runat="server" GroupName="feedback"  />
              
                <asp:ImageButton ID="ImageButton2" runat="server" Height="83px" ImageUrl="~/images/awsome.png" Width="85px" OnClick="ImageButton2_Click" />
            <asp:RadioButton ID="rbtnreallygood" runat="server" GroupName="feedback"  />    <asp:ImageButton ID="ImageButton3" runat="server" Height="83px" ImageUrl="~/images/reallygood1.png" Width="85px" OnClick="ImageButton3_Click" />
             <asp:RadioButton ID="rbtnok" runat="server" GroupName="feedback" />   <asp:ImageButton ID="ImageButton4" runat="server" Height="83px" ImageUrl="~/images/ok1.png" Width="85px" OnClick="ImageButton4_Click" />
             <asp:RadioButton ID="rbtnnotgood" runat="server" GroupName="feedback"  />   <asp:ImageButton ID="ImageButton5" runat="server" Height="83px" ImageUrl="~/images/not verygood.png" Width="85px" OnClick="ImageButton5_Click" />
             <asp:RadioButton ID="rbtnawful" runat="server" GroupName="feedback" />   <asp:ImageButton ID="ImageButton6" runat="server" Height="83px" ImageUrl="~/images/notgood.png" Width="85px" OnClick="ImageButton6_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#33CC33" Text="Please SelectYour Feddback Category Below:"></asp:Label>
            </td>
        </tr>
        <tr>
            
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:RadioButton ID="rbtnsuggetion" runat="server" GroupName="Category" Text="Suggetion" />
                <asp:RadioButton ID="rbtnwrong" runat="server" GroupName="category" Text="Not Quite Right" />
                <asp:RadioButton ID="rbtnCompliment" runat="server" GroupName="category" Text="Compliment" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Red" Text="Plaese Leave Your Feedback Here"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:TextBox ID="txtfeedback" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfeedback" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="btnsend" runat="server" Font-Bold="True" Text="SEND" style="border-radius:8px;height: 30px;width: 77px;" OnClick="btnsend_Click"/>
                <br />
                <asp:Label ID="lblprint" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#9933FF" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

