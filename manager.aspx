<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager.aspx.cs" Inherits="WebApplication8.manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style17 {
            width: 333px;
        }
        .auto-style18 {
            text-align: center;
            width: 333px;
        }
        .auto-style19 {
            text-align: center;
        }
        .auto-style20 {
            width: 1002px;
        }
        .auto-style21 {
            width: 334px;
        }
        .auto-style26 {
            width: 111px;
        }
        .auto-style27 {
            width: 112px;
        }
        .auto-style28 {
            width: 111px;
            text-align: right;
        }
        .auto-style29 {
            text-align: left;
        }
        .auto-style30 {
            font-size: x-large;
        }
        .auto-style31 {
            width: 111px;
            height: 23px;
        }
        .auto-style32 {
            width: 112px;
            height: 23px;
        }
        .auto-style34 {
            height: 23px;
            font-size: xx-large;
            text-align: left;
        }
        .auto-style35 {
            font-size: x-large;
            text-align: left;
        }
        .auto-style36 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style19">
        <div class="auto-style29">
            <asp:Label ID="mlabel" runat="server" Text="Label"></asp:Label>
&nbsp;</div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style29">
                    <asp:Label ID="mid" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" CssClass="button" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p class="auto-style30">
            &nbsp;</p>
        <table class="auto-style20">
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style34" colspan="2">
            <strong>New expense</strong></td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style31">Date</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">Expense type</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">Amount</td>
                <td class="auto-style31"></td>
                <td class="auto-style31">Link</td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">
                    <asp:TextBox ID="mdate" runat="server" placeholder="DD/MM/YYYY" CssClass="Txtstyle4"></asp:TextBox>
                </td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">
                    <asp:DropDownList ID="mdrop" runat="server">
                        <asp:ListItem>Food</asp:ListItem>
                        <asp:ListItem>Medical</asp:ListItem>
                        <asp:ListItem>Internet</asp:ListItem>
                        <asp:ListItem>Travel</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">
                    <asp:TextBox ID="mamount" runat="server" placeholder="Enter Amount" CssClass="Txtstyle4"></asp:TextBox>
                </td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">
                    <asp:TextBox ID="mlink" runat="server" CssClass="Txtstyle4"></asp:TextBox>
                </td>
                <td class="auto-style32">
                    <asp:Button ID="mreq" runat="server" OnClick="Button2_Click" Text="Send request" CssClass="button" />
                </td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style35" colspan="2"><strong>Transactions</strong></td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style28">
                    Emp-Id</td>
                <td class="auto-style26">
                    <asp:TextBox ID="uempid" runat="server" placeholder="Enter Emp-Id" CssClass="Txtstyle4"></asp:TextBox>
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style28">Status</td>
                <td class="auto-style26">
                    <asp:DropDownList ID="ustat" runat="server">
                        <asp:ListItem>Pending</asp:ListItem>
                        <asp:ListItem>Approved</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">
                    <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click1"  CssClass="button" />
                </td>
                <td class="auto-style26">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Search all" CssClass="button" />
                </td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Delete Approved" CssClass="button"/>
                </td>
                <td class="auto-style27">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
            </tr>
        </table>
&nbsp;<table class="auto-style20">
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style17">
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="GridView5_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="Aproove">
    <ItemTemplate>
    <asp:CheckBox ID="chkSelect" runat="server" 
                  AutoPostBack="true" 
             OnCheckedChanged="chkSelect_CheckedChanged"/>
    </ItemTemplate>
    
    </asp:TemplateField>
                            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                            <asp:BoundField DataField="exptype" HeaderText="exptype" SortExpression="exptype" />
                            <asp:BoundField DataField="expcost" HeaderText="expcost" SortExpression="expcost" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                            <asp:BoundField DataField="transid" HeaderText="transid" ReadOnly="True" SortExpression="transid" />
                            <asp:HyperLinkField DataNavigateUrlFields="link" DataTextField="link" 
            HeaderText="Links" />
                               
         
                            

                       
                            

                       
                            
                            

                       
                            

                       
                            </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                </td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
        </table>
            <asp:Button ID="Button4" runat="server" Text="update" OnClick="Button4_Click"  CssClass="button"/>
        </div>
    </form>
</body>
</html>
