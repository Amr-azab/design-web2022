<%@ Page Language="C#"%>
<%@ import Namespace ="System.Data.SqlClient" %>
<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Voting.mdf;Integrated Security=True";




        // 2- Create Sql Select statement string
        string strSelect = "SELECT * FROM Member "
            + " WHERE Username = '" + txtUN.Text+ "' AND "
            + " Password = '" + txtPW.Text + "'";

        // 3- Create Sql command
        SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

        // 4- Create Sql Data Reader
        SqlDataReader reader;

        // 5- Open the databse
        conn.Open();

        // 6- Execute Sql command
        reader = cmdSelect.ExecuteReader();

        // 7- Check reader
        if (reader.Read())
        {

            string Fname = (string)reader.GetValue(0);
            string Lname = (string)reader.GetValue(1);
            string Email = (string)reader.GetValue(3);


            HttpCookie coco = new HttpCookie("userInfo");
            coco.Values.Add("usern", txtUN.Text);
            coco.Values.Add("passw", txtPW.Text);

            coco.Values.Add("Fn", Fname);
            coco.Values.Add("Ln", Lname);
            coco.Values.Add("email", Email);

            coco.Expires = DateTime.Now.AddDays(10);
            Response.Cookies.Add(coco);


            if (txtUN.Text == "admin2022")
                Response.Redirect("~/AdminHome.aspx");
            else
                Response.Redirect("~/UserHome.aspx");
        }

        else
            lblMsg2.Text = "Invalid Username and/or Password, you may try again!!";

        // 8- Close the database
        conn.Close();


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
            text-align: center;
            width: 904px;
        }
        .auto-style3 {
            width: 904px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#FF0066" Text="Enter Your Username and Password  to login in"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Large" Text="Username:"></asp:Label>
&nbsp;<asp:TextBox ID="txtUN" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUN" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Large" Text="Password:"></asp:Label>
&nbsp;
                        <asp:TextBox ID="txtPW" runat="server" TextMode="Password" ></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPW" ErrorMessage="This is a required field " Font-Names="Arial" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial" NavigateUrl="~/Forget Password.aspx">Forget Password ?</asp:HyperLink>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Font-Names="Arial" Font-Size="Large" Text="Log In" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblMsg2" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
