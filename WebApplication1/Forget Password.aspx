<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forget Password.aspx.cs" Inherits="Voting_System.Forget_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 481px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 1053px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="XX-Large" ForeColor="#FF3300" Text="Reset Password"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="XX-Large" Text="Username :"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUserNametwo" runat="server" CssClass="auto-style3" Font-Size="X-Large"></asp:TextBox>
                &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUserNametwo" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtUserNametwo" ErrorMessage="Should be 8 characters at least" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="XX-Large" Text="Password :"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPasswordtwo" runat="server" TextMode="Password" CssClass="auto-style3" Font-Size="X-Large"></asp:TextBox>
                &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPasswordtwo" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtPasswordtwo" ErrorMessage="Should be between 8 and 12 chr" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="\w{8,12}"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="XX-Large" Text="Confirm Password:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Font-Size="X-Large"></asp:TextBox>
                &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPasswordtwo" ControlToValidate="txtConfirmPassword" ErrorMessage="No Matching Retype" Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Font-Names="Arial" ForeColor="#3399FF" Text="Confirm" Font-Size="XX-Large" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
