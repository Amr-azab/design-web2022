using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Voting_System
{
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Fname = "";
            string Lname = "";
            if (Request.Cookies["userinfo"]!=null)
                Fname= Request.Cookies["userinfo"].Values["fn"];
                Lname = Request.Cookies["userinfo"].Values["ln"];
            lblMsg.Text = "Welcome " + Fname  + " " + Lname + " to voting system";

        }
    }
}