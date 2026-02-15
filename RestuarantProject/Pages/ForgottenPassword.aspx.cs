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
    public partial class ForgottenPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["username"] != null)
                {
                    user_txt.Text = Request.QueryString["username"];
                }
            }
        }

        protected void change_btn_Click(object sender, EventArgs e)
        {
            string user = user_txt.Text;
            string pass=pass_txt.Text;
            string npass = cpass_txt.Text;
            SqlConnection con = SqlCon.RequriedConnection();
            con.Open();
            string query = "update UserRegistration set password=@pass where username=@user";
            SqlCommand cmd=new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@pass", npass);
            cmd.Parameters.AddWithValue("@user", user);
            int ncount = Convert.ToInt32(cmd.ExecuteNonQuery());
            con.Close();
            if(ncount!=0)
            {
                msg.InnerText = "Password Updated Successfully";
            }
            else
            {
                msg.InnerText = "Something trouble happened and didn't updated password";
            }
        }
    }
}