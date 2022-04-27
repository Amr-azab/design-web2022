<%@ Page Language="C#"%>
<%@ import Namespace ="System.Data.SqlClient" %>
<!DOCTYPE html>
<script runat ="server">


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Voting.mdf;Integrated Security=True";
        string strlnsert = String.Format("INSERT INTO Candidate VALUES('{0}','{1}','{2}')", NameV.Text,IDV.Text,txtE.Text);



        SqlCommand cmdlnsert = new SqlCommand(strlnsert, conn);

        try
        {

            conn.Open();

            cmdlnsert.ExecuteNonQuery();

            conn.Close();


            lblMsg.Text = "Add " + NameV.Text + "  In The List";
        }

        catch (SqlException err)
        {
            if (err.Number == 2627)
                lblMsg.Text = "The username" + NameV.Text + "already used , please choose another";
            else
                lblMsg.Text = "Sorry,database problem,please try later ";

        }

        catch
        {
            lblMsg.Text = "Sorry, the system is not available at the moment,you may try later";
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 505px;
        }
        .auto-style2 {
            text-align: center;
            width: 297px;
        }
        .auto-style3 {
            text-align: center;
            height: 39px;
            width: 297px;
        }
        .auto-style4 {
            height: 39px;
        }
        .auto-style6 {
            height: 39px;
            width: 568px;
            text-align: center;
        }
        .auto-style7 {
            width: 568px;
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
            width: 297px;
            height: 84px;
        }
        .auto-style9 {
            width: 568px;
            text-align: left;
            height: 84px;
        }
        .auto-style10 {
            height: 84px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="XX-Large" ForeColor="#99FF66" Text="Add Candidate"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;<br />
                    </td>
                    <td class="auto-style6"><asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="X-Large" Text="Name :"></asp:Label>
                        <br />
                        <asp:TextBox ID="NameV" runat="server" Font-Names="Arial" Font-Size="X-Large"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameV" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="NameV" ErrorMessage="Invalid Name Format" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="([A-Z][a-z]* \ s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="X-Large" Text="ID :"></asp:Label>
                        <br />
                        <asp:TextBox ID="IDV" runat="server" Font-Names="Arial" Font-Size="X-Large"></asp:TextBox>
                        <br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="IDV" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="IDV" ErrorMessage="Invalid ID Format" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="X-Large" Text="Email :"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtE" runat="server" Font-Names="Arial" Font-Size="X-Large"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtE" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtE" ErrorMessage="Invalid Email Address" Font-Names="Arial" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#FF6600" Text="Submit" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        </td>
                    <td class="auto-style9">
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
            </table>
    </form>
</body>
</html>
