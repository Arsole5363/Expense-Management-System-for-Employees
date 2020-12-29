<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="WebApplication8.user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 587px;
        }
        .auto-style4 {
            width: 177px;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style15 {
            width: 1002px;
        }
        .auto-style21 {
            width: 333px;
        }
        .auto-style23 {
            width: 334px;
        }
        .auto-style24 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style29 {
            width: 142px;
        }
        .auto-style30 {
            width: 143px;
        }
        .auto-style31 {
            font-size: x-large;
        }
        .auto-style32 {
            width: 158px;
        }
        .auto-style33 {
            width: 332px;
        }
        .auto-style35 {
            width: 177px;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style5">
            <asp:Label ID="userlabel" runat="server" Text="Welcome..."></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="userempid" runat="server" Text="Emp-Id"></asp:Label>
                </td>
                <td class="auto-style33">&nbsp;</td>
                <td>
            <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="Log Out" CssClass="button"/>
                </td>
            </tr>
        </table>
        <p class="auto-style24">
            &nbsp;</p>
        <table class="auto-style15">
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style31" colspan="2">
            <strong>New Expense</strong></td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">Date</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style4">Expense type</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style30">Amount</td>
                <td class="auto-style30">Add link</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">
                    <asp:TextBox ID="userdate" runat="server" placeholder="DD/MM/YYYY" OnTextChanged="userdate_TextChanged" CssClass="Txtstyle4"></asp:TextBox>
                </td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="userdrop" runat="server">
                        <asp:ListItem>Food</asp:ListItem>
                        <asp:ListItem>Medical</asp:ListItem>
                        <asp:ListItem>Internet</asp:ListItem>
                        <asp:ListItem>Travel</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style30">
                    <asp:TextBox ID="useramount" runat="server" placeholder="Enter Amount" CssClass="Txtstyle4"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="ulink" runat="server" CssClass="Txtstyle4"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Send request" CssClass="button" />
                </td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style31" colspan="2"><strong>View Expense</strong></td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style30">
                    <asp:DropDownList ID="userlist" runat="server">
                        <asp:ListItem>Approved</asp:ListItem>
                        <asp:ListItem>Pending</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button3" runat="server"  OnClick="Button3_Click1" Text="Search" CssClass="button" />
                </td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style15">
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style21">
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
