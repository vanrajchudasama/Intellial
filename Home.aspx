<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CRUDApplication.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
         <h1 style="text-align:center;">CURD Application</h1>
        <div style="text-align:center;">
            <asp:Button ID="btnCustomer" runat="server" Height="50px" Text="Add Customer" Width="307px" OnClick="btnCustomer_Click" />
            <br />
            <br />
            <asp:Button ID="btnProduct" runat="server" Height="50px" Text="Add Product" Width="307px" OnClick="btnProduct_Click" />
            <br />
            <br />
            <asp:Button ID="btnOrder" runat="server" Height="50px" Text="Add  Order" Width="307px" OnClick="btnOrder_Click" />
            <br />
            <br />
            <asp:Button ID="btn_order_list" runat="server" Height="50px" Text="View Order List" Width="307px" EnableViewState="False" OnClick="btn_order_list_Click" />
        </div>
  </form>
</body>
</html>
