<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Order.aspx.cs" Inherits="CRUDApplication.Add_Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 324px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center;">
            Add Order
        </h1>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Customer"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server"  Height="33px" Width="280px" >
                       
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Product"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="33px" Width="280px" >
                       
                    </asp:DropDownList>

                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Remark"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRemark" runat="server" Height="111px" TextMode="MultiLine" Width="338px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="43px" Text="Place Order" Width="149px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Cancel</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
