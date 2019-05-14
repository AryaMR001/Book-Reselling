<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Best-selling-book.aspx.cs" Inherits="Best_selling_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 35px;
            height: 3px;
        }
        .auto-style6 {
            width: 35px;
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Chart ID="Chart1" runat="server" OnLoad="Chart1_Load">
        <Series>
            <asp:Series Name="Series1" XValueMember="Bok_Name" YValueMembers="count">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
</asp:Content>

