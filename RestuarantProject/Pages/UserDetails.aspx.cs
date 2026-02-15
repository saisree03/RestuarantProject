using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Using.System.Sql;

namespace RestuarantProject.Pages
{
    public partial class UserDetails : System.Web.UI.Page
    {
        private void GetUserDetails()
        {
            SqlConnection con = SqlCon.RequriedConnection();
            string query = "select *from UserRegistration";
            SqlCommand cmd=new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GetUserDetails();
        }
    }
}