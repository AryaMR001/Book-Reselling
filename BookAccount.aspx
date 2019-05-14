<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookAccount.aspx.cs" Inherits="BookAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        table{border:2px solid black;}
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns = "3" Height="363px">
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
                       
                                  </table></ItemTemplate>
                </asp:DataList>

        
    </div>
    </form>
</body>
</html>
