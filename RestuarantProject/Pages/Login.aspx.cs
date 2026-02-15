using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Using.System.Sql;
using System.Data;


namespace RestuarantProject.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Log_btn_Click(object sender, EventArgs e)
        {
            string username;
            string password;
            username = User_Txt.Text;
            password = Pass_Text.Text;
            SqlConnection con = SqlCon.RequriedConnection();
            con.Open();
            string query = "select count(*) from UserRegistration where username=@user AND password=@pass";
            SqlCommand cmd=new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", username);
            cmd.Parameters.AddWithValue("@pass", password);
            int UserCount = Convert.ToInt32(cmd.ExecuteScalar());
            string query1 = "select count(*) from AdminDetails where username=@user AND password=@pass";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@user", username);
            cmd1.Parameters.AddWithValue("@pass", password);
            int AdminCount = Convert.ToInt32(cmd1.ExecuteScalar());
            con.Close();
            if(UserCount>0)
            {
                Session["Username"] = username;
                Response.Redirect("MyBookings.aspx");
            }
            else if(AdminCount>0) 
            {
                Response.Redirect("UserDetails.aspx");
            }
            else
            {
                wrong.InnerText = "Invalid Cerdentials";
            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string username = User_Txt.Text.Trim();            
            if (string.IsNullOrEmpty(username))
            {
                wrong.InnerText = "Please enter username first";
                return;
            }
            Response.Redirect("ForgottenPassword.aspx?username=" + username);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgottenAccount.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
        
    }
}