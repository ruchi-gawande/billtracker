<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="BILLTRACKERPROJECT.loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        
        .auto-style4 {
            text-align: center;
        }
         body{
           background-image:url('back2.jpg');background-repeat:no-repeat; background-size:auto;
       }

        .auto-style5 {
            margin-top: 0px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style4">
                <div class="auto-style4">
                <br />
                <br />
                <br />
                <br />
                    <asp:Image ID="Image1" runat="server" Height="192px" ImageUrl="~/avt.png" Width="263px" CssClass="auto-style5" />
                <br />
                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table align="center" class="auto-style1">
                <tr>
                    <td><strong>User ID</strong></td>
                    <td>
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" BorderColor="#33CCCC" BorderStyle="Groove"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>Password</strong></td>
                    <td>
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" BorderColor="#33CCCC" BorderStyle="Groove"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" BorderColor="Blue" BorderStyle="Groove" />
                        <br />
                    </td>
                </tr>
            </table>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
