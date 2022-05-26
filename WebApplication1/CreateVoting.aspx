<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateVoting.aspx.cs" Inherits="Voting_System.CreateVoting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 538px;
        }
        .auto-style2 {
            text-align: center;
            width: 257px;
        }
        .auto-style4 {
            text-align: center;
            width: 284px;
        }
        .auto-style5 {
            text-align: center;
            width: 257px;
            height: 153px;
        }
        .auto-style6 {
            text-align: center;
            height: 153px;
            width: 284px;
        }
        .auto-style7 {
            height: 153px;
        }
        .auto-style8 {
            text-align: center;
            width: 257px;
            height: 142px;
        }
        .auto-style9 {
            text-align: center;
            height: 142px;
            width: 284px;
        }
        .auto-style10 {
            height: 142px;
        }
        .auto-style11 {
            text-align: center;
            width: 257px;
            height: 118px;
        }
        .auto-style12 {
            text-align: center;
            height: 118px;
            width: 284px;
        }
        .auto-style13 {
            height: 118px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="XX-Large" ForeColor="#009900" Text="New Voting"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <br />
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="XX-Large" Text="Voting ID :"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtVotingID" runat="server" Font-Size="XX-Large"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVotingID" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtVotingID" ErrorMessage="Invalid ID Format" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <br />
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="XX-Large" Text="Voting Topic :"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtVotingTopic" runat="server" Font-Size="XX-Large" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtVotingTopic" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <br />
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="XX-Large" Text="No. Of Candidate:"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" Font-Size="XX-Large">
                            <asp:ListItem Selected="True">2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Font-Names="Arial" Font-Size="XX-Large" Text="submit" BackColor="#00CC00" ForeColor="Blue" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
