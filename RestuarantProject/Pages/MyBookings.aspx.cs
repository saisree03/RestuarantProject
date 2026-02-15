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
    public partial class MyBookings : System.Web.UI.Page
    {
        private void GetData()
        {
            SqlConnection con = SqlCon.RequriedConnection();
            string query = "select * from HotelRegistration";
            SqlCommand cmd=new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        private void LoadBookings(string username)
        {
            SqlConnection con = SqlCon.RequriedConnection();
            string query = "SELECT * FROM HotelRegistration WHERE Username = @Username";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Username", username);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            string username = Session["Username"].ToString();

            // Use this username to load bookings
            LoadBookings(username);
        }

       
    }
}