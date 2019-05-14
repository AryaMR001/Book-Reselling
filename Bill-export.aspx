<%@ Page Title="" Language="C#" MasterPageFile="~/BookStore.master" AutoEventWireup="true" CodeFile="Bill-export.aspx.cs" Inherits="Bill_export" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            margin-bottom: 0px;
        }
        .auto-style8 {
            text-align: justify;
        }
        .auto-style9 {
            height: 23px;
        }
    </style>
    <script>
        function print()
        {
            var divToPrint = document.getElementById("table");
            newWin = window.open('', '', 'height=700,width=900');
            newWin.document.write(divToPrint.outerHTML);
            newWin.print();
            newWin.close();
        }
        //pdf
        function demoFromHTML() {
            var pdf = new jsPDF('p', 'pt', 'letter');

            source = $('#table')[0];

            specialElementHandlers = {

                '#bypassme': function (element, renderer) {

                    return true
                }
            };
            margins = {
                top: 100,
                bottom: 60,
                left: 10,
                width: 5000
            };

            pdf.fromHTML(
            source, // HTML string or DOM elem ref.
            margins.left, // x coord
            margins.top, { // y coord
                'width': margins.width, // max width of content on PDF
                'elementHandlers': specialElementHandlers
            },

            function (dispose) {

                pdf.save('Test.pdf');
            }, margins);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5" id="table">
        <tr>
            <td class="auto-style8" colspan="2">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style6" Height="175px" ImageUrl="~/images/download (1).jpg" Width="100%" />
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Order ID" Font-Size="Large"></asp:Label></td>
            <td>
                
                <asp:Label ID="lblid" runat="server"  Text="Label"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Order Date"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="lblbdate" runat="server"  Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Sub Total"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblsub" runat="server" Font-Size="Large" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="Shipping Cost"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblship" runat="server" Font-Size="Large" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="Grand Total"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblgrand" runat="server" Font-Size="Large" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text="Your Account is Debitted With:"></asp:Label>
                <asp:Label ID="lbldeb" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text="Remaining Balance:"></asp:Label>
                <asp:Label ID="lblbalance" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
                <asp:ImageButton ID="ImageButton3" runat="server" Height="59px" ImageUrl="~/images/print.jpg" Width="101px" OnClick="ImageButton3_Click" OnClientClick="print()" />
         <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>   
</asp:Content>

