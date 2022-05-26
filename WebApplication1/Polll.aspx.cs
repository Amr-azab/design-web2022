using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Voting_System
{
    public partial class Polll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPoll_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Voting.mdf;Integrated Security=True";
            string strlnsert = String.Format("INSERT INTO Poll VALUES('{0}','{1}','{2}','{3}','{4}')", TeID.Text, TeCA.Text, RRPP.SelectedValue,TeED.Text,TeTIT.Text);



            SqlCommand cmdlnsert = new SqlCommand(strlnsert, conn);

            try
            {

                conn.Open();

                cmdlnsert.ExecuteNonQuery();

                conn.Close();


                lblMSGM.Text = "You poll " + TeTIT.Text + "  In The List";
            }

            catch (SqlException err)
            {
                if (err.Number == 2627)
                    lblMSGM.Text = "The username" + TeTIT.Text + "already used , please choose another";
                else
                    lblMSGM.Text = "Sorry,database problem,please try later ";

            }

            catch
            {
                lblMSGM.Text = "Sorry, the system is not available at the moment,you may try later";
            }
        }
    }
}

        