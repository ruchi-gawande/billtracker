<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrationpage.aspx.cs" Inherits="BILLTRACKERPROJECT.registrationpage" %>

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
         body{
           background-image:url('back2.jpg');background-repeat:no-repeat; background-size:auto;
       }
         
        .auto-style3 {
            height: 32px;
        }
         
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <div class="auto-style2">
                <br />
                <br />
                Registration page<br />
                <br />
                <br />
                <br />
                <br />
            </div>
            <table align="center" class="auto-style1">
                <tr>
                    <td><strong>User Id</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" BorderColor="#33CCCC" BorderStyle="Groove"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><strong>Name</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" BorderColor="#33CCCC" BorderStyle="Groove"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>Password</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" BorderColor="#33CCCC" BorderStyle="Groove" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>DOB</strong></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox7" runat="server" BorderColor="#33CCCC" BorderStyle="Groove"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>Address</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" BorderColor="#33CCCC" BorderStyle="Groove"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>City</strong></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Indore</asp:ListItem>
                            <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>State</strong></td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>MP</asp:ListItem>
                            <asp:ListItem>Maharashtra</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>Email ID</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" BorderColor="#33CCCC" BorderStyle="Groove"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>Mobile Number</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" BorderColor="#33CCCC" BorderStyle="Groove"></asp:TextBox>
                        <br />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/billingpage.aspx">LinkButton</asp:LinkButton>
            <br />
        </div>
    </form>
</body>
</html>
