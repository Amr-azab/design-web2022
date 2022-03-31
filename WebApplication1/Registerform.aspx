<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registerform.aspx.cs" Inherits="WebApplication1.Registerform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="Register Form" style="color: #FF0000; text-decoration: underline; text-align: center"></asp:Label>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label2" runat="server" Text="username"></asp:Label>
                    <br />
                    <input id="Text1" type="text" /></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label3" runat="server" Text="password"></asp:Label>
                    <br />
                    <input id="Password1" type="password" /></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="register" style="text-align: center" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
    <p style="text-align: center">
        &nbsp;</p>
</body>
</html>
