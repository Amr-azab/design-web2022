using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Voting_System
{
    public partial class voting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Voting.mdf;Integrated Security=True";
            string strlnsert = String.Format("INSERT INTO Poll VALUES('{0}','{1}','{2}','{3}','{4}')", TexID.Text,TexCA.Text, RRPriv.SelectedValue,TexED.Text,TexTI.Text);



            SqlCommand cmdlnsert = new SqlCommand(strlnsert, conn);

            try
            {

                conn.Open();

                cmdlnsert.ExecuteNonQuery();

                conn.Close();


                LblMSGM.Text = "You poll " + TexTI.Text + "  In The List";
            }

            catch (SqlException err)
            {
                if (err.Number == 2627)
                    LblMSGM.Text = "The username" + TexTI.Text + "already used , please choose another";
                else
                    LblMSGM.Text = "Sorry,database problem,please try later ";

            }

            catch
            {
                LblMSGM.Text = "Sorry, the system is not available at the moment,you may try later";
            }
        }
    }
}
    
