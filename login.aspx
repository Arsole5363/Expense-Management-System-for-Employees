<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication8.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 185px;
            text-align: right;
        }
        .auto-style5 {
            width: 132px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style8 {
            width: 132px;
            height: 23px;
        }
        .auto-style9 {
            text-align: center;
            width: 182px;
        }
        .auto-style10 {
            width: 182px;
        }
        .auto-style11 {
            width: 182px;
            height: 23px;
        }
        .auto-style12 {
            width: 185px;
        }
        .auto-style13 {
            width: 185px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
            Login Page<br />
            <br />
        </div>
        <table class="auto-style2">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">Emp-Id</td>
                <td class="auto-style5">
                    <asp:TextBox ID="loginid" runat="server" placeholder="Enter Emp-Id" CssClass="Txtstyle4"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loginid" ErrorMessage="Emp-Id is required"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="loginpass" runat="server" TextMode="Password"  placeholder="Enter Password" CssClass="Txtstyle4"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginpass" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log in" CssClass="button" />
                </td>
                <td class="auto-style10">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">New user register here</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style13"></td>
                <td class="auto-style8"></td>
                <td class="auto-style11"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
