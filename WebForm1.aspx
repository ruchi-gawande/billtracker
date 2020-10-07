<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BILLTRACKERPROJECT.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        header{
            background-color:lightseagreen;
          width: 100%;
          height:60px;
        }

        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
       footer{
           width:100%;
           height:40px;
           position:absolute;
           bottom:2px;
           background-color:cornflowerblue;
       }

        .auto-style2 {
            text-align: center;
        }
       form{
          
       }
       body{
           background-image:url('p4.jpg');background-repeat:no-repeat; background-size:cover;
       }
        /* aside{
            position:absolute;
            left:1px;
            top:65px;
            width:80px;
            height:600px;
            background-color:lightseagreen;text-align:center;
        }*/
        .auto-style4 {
            background-color: #FFFFFF;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            text-align: right;
            font-size: large;
        }
        .auto-style8 {
            text-align: center;
            font-size: large;
        }
        .auto-style9 {
            text-align: left;
            font-size: large;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div class="auto-style5">
        <header class="auto-style1">
             My Bill Tracker 

        </header>
        <footer class="auto-style2">
            copyright @ruchigawande
        </footer>
       
        
        <div>
        </div>
        <p class="auto-style8">
            <strong><span class="auto-style4">Welcome!!</span></strong></p>
            <p class="auto-style7">
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style6" Height="158px" ImageUrl="~/lb.png" OnClick="ImageButton1_Click1" Width="259px" />
            </p>
            <p class="auto-style9">
                My Bill Tracker helps you keep an eye on all your bills.</p>
            <p class="auto-style9">
                It helps you track your bill payments and due dates.</p>
            <p class="auto-style9">
                To continue with our personlized servies please login.</p>
            <p class="auto-style7">
                &nbsp;</p>
            <p class="auto-style7">
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
