<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Voting_System.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 109%;
            margin-bottom: 64px;
        }
        .auto-style2 {
            text-align: center;
            width: 1133px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="XX-Large" ForeColor="#CC0099" Text="Online Voting system" Font-Bold="True" Font-Italic="False"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" BackColor="#000099" Font-Size="XX-Large" ForeColor="White" PostBackUrl="~/AddCan.aspx" Text="Add candidate" Height="146px" Width="1131px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" BackColor="#000099" Font-Size="XX-Large" ForeColor="White" PostBackUrl="~/CreateVoting.aspx" Text="Add new voting" Height="141px" Width="1130px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" BackColor="#000099" Font-Size="XX-Large" ForeColor="White" Text="View Voting" Height="156px" Width="1131px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button4" runat="server" BackColor="#000099" Font-Size="XX-Large" ForeColor="White" PostBackUrl="~/links.aspx" Text="Log out" Height="147px" Width="1132px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
