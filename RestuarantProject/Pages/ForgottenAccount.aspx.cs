using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Using.System.Sql;

namespace RestuarantProject.Pages
{
    public partial class ForgottenAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sub_btn_Click(object sender, EventArgs e)
        {
            string input = Inp.Text;
            SqlConnection con = SqlCon.RequriedConnection();
            con.Open();
            string query = "select username from UserRegistration where email=@inp OR phoneno=@inp";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@inp", input);
            string user=cmd.ExecuteScalar().ToString();
            con.Close();
            if (!string.IsNullOrEmpty(user))
            {
                Out.InnerText = user;
            }
            else
            {
                Out.InnerText = "User not found on this account";
            }
        }
    }
}