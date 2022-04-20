<%@ Page Language="C#"%>
<%@ import Namespace ="System.Data.SqlClient" %>
<!DOCTYPE html>
<script runat ="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Voting.mdf;Integrated Security=True";
        string strlnsert = String.Format("INSERT INTO Member VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", txtFname.Text, txtLname.Text, rblSex.SelectedValue, txtEmail.Text, txtPhone.Text, ddlCountry.SelectedValue, txtUsername.Text, txtPassword.Text);


        SqlCommand cmdlnsert = new SqlCommand(strlnsert, conn);

        conn.Open();

        cmdlnsert.ExecuteNonQuery();

        conn.Close();


        lblMsg.Text = "Welcome " + txtFname.Text + "  Your Account has been successfully created";
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
        .auto-style7 {
            height: 37px;
            width: 328px;
        }
        .auto-style8 {
            width: 328px;
        }
        .auto-style9 {
            height: 33px;
            width: 328px;
        }
        .auto-style10 {
            height: 37px;
            width: 243px;
        }
        .auto-style12 {
            height: 33px;
            width: 243px;
        }
        .auto-style13 {
            width: 243px;
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
                    <td class="auto-style7">
                        <asp:TextBox ID="txtFname" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="Invalid First Name Format" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]* \ s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Last Name:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtLname" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Invalid Last Name Format" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]* \ s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Sex:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:RadioButtonList ID="rblSex" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label12" runat="server" Font-Names="Arial" Text="Email Address :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtEmail" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Address" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Font-Names="Arial" Text="Phone :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPhone" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label7" runat="server" Font-Names="Arial" Text="Country :"></asp:Label>
&nbsp;</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlCountry" runat="server" Font-Size="Medium">
                            <asp:ListItem Selected="True">Egypt</asp:ListItem>
                            <asp:ListItem>Sudan</asp:ListItem>
                            <asp:ListItem>Lebanon</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                            <asp:ListItem>Italy</asp:ListItem>
                            <asp:ListItem>Spain</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style12"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Font-Names="Arial" Text="Username :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtUsername" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUsername" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtUsername" ErrorMessage="Should be 8 characters at least" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Font-Names="Arial" Text="Password :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPassword" runat="server" Font-Names="Arial" Font-Size="Medium" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtPassword" ErrorMessage="Should be between 8 and 12 characters" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="\w{8,12}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Font-Names="Arial" Text="Retype Password:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtRetypePassword" runat="server" Font-Names="Arial" Font-Size="Medium" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtRetypePassword" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRetypePassword" ErrorMessage="No Matching Retype" Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnSubmit" runat="server" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#FF3300" OnClick="btnSubmit_Click" Text="Submit" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
            <asp:Label ID="lblMsg" runat="server" Font-Names="Arial" Font-Size="X-Large"></asp:Label>
    </form>
</body>
</html>
