<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="CRUDApplication.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 390px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center;">Add Product</h1>
        <div>
            <table class="auto-style1">
                <tr>
                    <td style="text-align:right;">
                        <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtProduct" runat="server" Height="37px" Width="383px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProduct" ErrorMessage="Please enter product name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
            </table>
            <div style="text-align:center;">

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="42px" Width="187px" OnClick="btnSubmit_Click" />
        </div>
        </div>
    </form>
</body>
</html>
