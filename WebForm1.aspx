<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            text-align: right;
            width: 111px;
            height: 23px;
        }
        .auto-style8 {
            text-align: center;
            width: 687px;
        }
        .auto-style10 {
            width: 73px;
        }
        .auto-style11 {
            width: 203px;
        }
        .auto-style14 {
            width: 704px;
        }
        .auto-style18 {
            width: 510px;
        }
        .auto-style19 {
            width: 210px;
        }
        .auto-style20 {
            text-align: center;
            width: 704px;
            font-size: xx-large;
        }
        .auto-style21 {
            width: 687px;
        }
        .auto-style22 {
            width: 1px;
        }
        .auto-style23 {
            width: 1002px;
        }
        .auto-style37 {
            width: 111px;
            height: 23px;
        }
        .auto-style38 {
            height: 23px;
            width: 112px;
        }
        .auto-style39 {
            width: 111px;
        }
        .auto-style40 {
            text-align: right;
            width: 111px;
        }
        .auto-style41 {
            width: 112px;
        }
        .auto-style42 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
            <table class="auto-style23">
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style42" colspan="3" rowspan="4">New Registration</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style38">
                    <asp:HyperLink ID="HyperLink1" runat="server" BorderStyle="None" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style38">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style40">Emp-Id</td>
                    <td class="auto-style39">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="Txtstyle4" AutoPostBack="true"></asp:TextBox>
                    </td>
                    <td class="auto-style39">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style40">Name</td>
                    <td class="auto-style39">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="Txtstyle4" ></asp:TextBox>
                    </td>
                    <td class="auto-style39">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style40">Password</td>
                    <td class="auto-style39">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="Txtstyle4"></asp:TextBox>
                    </td>
                    <td class="auto-style39">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style40">Role</td>
                    <td class="auto-style39">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="117px" CssClass="auto-style11">
                            <asp:ListItem>Employee</asp:ListItem>
                            <asp:ListItem>Manager</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style37"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style38">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style39">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" CssClass="button"  />
                    </td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style39">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
