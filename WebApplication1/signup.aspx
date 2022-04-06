<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Voting_System.signup" %>
<%@ import Namespace ="System.Data.SqlClient" %>
<!DOCTYPE html>
<script runat ="server">
    protected void btnSubmit_click(object sender,EventArgs e)
    {
        //SqlConnection conn = new SqlConnection();
       // conn.ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\myaz6\source\repos\Voting-System\App_Data\VotingSystem.mdf;Integrated Security=True"

        lblMsg.Text = "The function has been executed !";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 201px;
        }
        .auto-style3 {
            width: 201px;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }
        .auto-style5 {
            width: 201px;
            height: 37px;
        }
        .auto-style6 {
            height: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="X-Large" Text="To sign up , Fill in all following fields  ,Then Click Submit"></asp:Label>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Medium" Text="First Name :"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtFname" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Last Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLname" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Sex:"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblSex" runat="server" Font-Size="Medium" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label12" runat="server" Font-Names="Arial" Text="Email Address :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Font-Names="Arial" Text="Phone :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label7" runat="server" Font-Names="Arial" Text="Country :"></asp:Label>
&nbsp;</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlCountry" runat="server" Font-Size="Medium">
                            <asp:ListItem Selected="True">Egypt</asp:ListItem>
                            <asp:ListItem>Sudan</asp:ListItem>
                            <asp:ListItem>Lebanon</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                            <asp:ListItem>Italy</asp:ListItem>
                            <asp:ListItem>Spain</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Font-Names="Arial" Text="Username :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Font-Names="Arial" Text="Password :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" Font-Names="Arial" Font-Size="Medium" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Font-Names="Arial" Text="Retype Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRetypePassword" runat="server" Font-Names="Arial" Font-Size="Medium" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnSubmit" runat="server" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#FF3300" OnClick="btnSubmit_Click" Text="Submit" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
            <asp:Label ID="lblMsg" runat="server" Font-Names="Arial" Font-Size="X-Large"></asp:Label>
    </form>
</body>
</html>
