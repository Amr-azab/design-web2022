<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rename.aspx.cs" Inherits="Voting_System.Rename" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 379px;
        }
        .auto-style2 {
            text-align: center;
            width: 858px;
        }
        .auto-style3 {
            text-align: center;
            height: 65px;
            width: 858px;
        }
        .auto-style4 {
            height: 65px;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="XX-Large" ForeColor="#009900" Text="Edit Profile"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="X-Large" Text="First name"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtfirst" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirst" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtfirst" ErrorMessage="Invalid First Name Format" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]* \ s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="X-Large" Text="Last name"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtLast" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLast" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLast" ErrorMessage="Invalid Last Name Format" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]* \ s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="X-Large" Text="Phone number"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:TextBox ID="txtPhoneN" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="X-Large" Text="Address"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtA" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtA" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtA" ErrorMessage="Invalid Email Address" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="X-Large" Text="Username"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TxtU" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtU" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtU" ErrorMessage="Should be 8 characters at least" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="X-Large" Text="Password"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtP" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtP" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtP" ErrorMessage="Should be between 8 and 12 characters" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="\w{8,12}"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="X-Large" Text="Confirm Password"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtC" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtC" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtP" ControlToValidate="txtC" ErrorMessage="No Matching Retype" Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#6600FF" Text="Submit" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
        </div>
        <div class="auto-style5">
            <br />
        </div>
    </form>
</body>
</html>
