<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="billingpage.aspx.cs" Inherits="BILLTRACKERPROJECT.billingpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
        }
         body{
           background-image:url('back2.jpg');background-repeat:no-repeat; background-size:auto;
       }
        .auto-style4 {
            margin-right: 1126px;
        }
        p{
            background-color:lightsalmon;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style3"><strong>Bill Title</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" BorderColor="#009999" BorderStyle="Groove"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Bill Category</strong></td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Office</asp:ListItem>
                            <asp:ListItem>Personal</asp:ListItem>
                            <asp:ListItem>Social</asp:ListItem>
                            <asp:ListItem>Family</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Bill Amount</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server" BorderColor="#009999" BorderStyle="Groove"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Date Of Entry</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox4" runat="server" BorderColor="#009999" BorderStyle="Groove"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Bill Due Date</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox5" runat="server" BorderColor="#009999" BorderStyle="Groove"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Bill Payment Mode</strong></td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>CC</asp:ListItem>
                            <asp:ListItem>Cash</asp:ListItem>
                            <asp:ListItem>Bank Transfer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Bill Status</strong></td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>Paid</asp:ListItem>
                            <asp:ListItem>Unpaid</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <strong>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate Bill" BorderColor="Blue" BorderStyle="Double" />
                        </strong>
                    </td>
                </tr>
            </table>
        </div>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            Bill Reports</p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" Width="1088px">
            <Columns>
                <asp:BoundField DataField="billtitle" HeaderText="billtitle" SortExpression="billtitle" />
                <asp:BoundField DataField="billcategory" HeaderText="billcategory" SortExpression="billcategory" />
                <asp:BoundField DataField="billamount" HeaderText="billamount" SortExpression="billamount" />
                <asp:BoundField DataField="dateofentry" HeaderText="dateofentry" SortExpression="dateofentry" />
                <asp:BoundField DataField="billduedate" HeaderText="billduedate" SortExpression="billduedate" />
                <asp:BoundField DataField="billpaymentmethod" HeaderText="billpaymentmethod" SortExpression="billpaymentmethod" />
                <asp:BoundField DataField="billstatus" HeaderText="billstatus" SortExpression="billstatus" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ruchidbConnectionString %>" SelectCommand="SELECT * FROM [billu]"></asp:SqlDataSource>
        <p class="auto-style2">
            Bills By Due Date</p>
        <div>
            <br />
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CssClass="auto-style4" Width="1095px">
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
        </div>
    </form>
</body>
</html>
