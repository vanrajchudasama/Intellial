<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CRUDApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 377px;
        }
        .auto-style4 {
            width: 377px;
        }
        .mtTable{
            text-align:right;
        }
    </style>
</head>
<body>
    <div>
    <form id="form1" runat="server">
        <div style="justify-content:center;">
            <h1 style="text-align:center;">Add Customer</h1>
            <table class="auto-style1">
                <tr>
                    <td class="mtTable">
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="auto-style3">
                    <asp:TextBox ID="txtFname" runat="server" Height="37px" Width="336px"></asp:TextBox>

                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="Please enter first name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="mtTable">
                        <asp:Label ID="Label2" runat="server" Text="Last Name "></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtLname" runat="server" Height="37px" Width="336px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Please enter last name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="mtTable">
                        <asp:Label ID="Label3" runat="server" Text="Contact No."></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtContact" runat="server" Height="37px" Width="336px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContact" ErrorMessage="Please enter contact no." ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtContact" ErrorMessage="Please enter valid contact no." ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="mtTable">
                        <asp:Label ID="Label4" runat="server" Text="Pincode"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPin" runat="server" Height="37px" Width="336px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPin" ErrorMessage="Please enter pincode" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPin" ErrorMessage="Please enter 6 digit pincode" ForeColor="Red" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>

                    </td>
                </tr>
            </table>
        </div>
        <div style="text-align:center;">

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="42px" Width="187px" OnClick="btnSubmit_Click" />
        </div>
    </form>
    
        </div>
</body>
</html>
