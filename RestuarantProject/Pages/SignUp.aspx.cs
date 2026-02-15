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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signup_btn_Click(object sender, EventArgs e)
        {
            string Fname = string.Empty, Lname = string.Empty, name, email = string.Empty, phoneno = string.Empty, gender = string.Empty, role = string.Empty, password = string.Empty, Cpassword = string.Empty, address = string.Empty, country = string.Empty, state = string.Empty, city = string.Empty;
            int zipcode,Ucount=0,Acount=0;
            string username = user_txt.Text;
            DateTime dob;
            Fname = Fname_txt.Text;
            Lname = Lname_txt.Text;
            name = Fname + " " + Lname;
            email = Email_txt.Text;
            phoneno = Phone_txt.Text;
            if (Female_rb.Checked)
            {
                gender = Female_rb.Text;
            }
            if (Male_rb.Checked)
            {
                gender = Male_rb.Text;
            }
            role = DropDownList1.SelectedItem.Text;
            password = Pass_txt.Text;
            Cpassword = Cpass_txt.Text;
            address = Addr_txt.Text;
            country = DropDownList2.SelectedItem.Text;
            state = State_txt.Text;
            city = city_txt.Text;
            zipcode = Convert.ToInt32(Zip_txt.Text);
            dob = Convert.ToDateTime(Dob_txt.Text);
            SqlConnection con = SqlCon.RequriedConnection();
            if (role.ToLower() == "user")
            {
                SqlCommand cmd = new SqlCommand("InsertUserRegistration", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@PhoneNo", phoneno);
                cmd.Parameters.AddWithValue("@Gender", gender);
                cmd.Parameters.AddWithValue("@Role", role);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Country", country);
                cmd.Parameters.AddWithValue("@State", state);
                cmd.Parameters.AddWithValue("@City", city);
                cmd.Parameters.AddWithValue("@Postal", zipcode);
                cmd.Parameters.AddWithValue("@DateOfBirth", dob);
                cmd.Parameters.AddWithValue("@Username", username);
                con.Open();
                Ucount=Convert.ToInt32(cmd.ExecuteNonQuery());
                con.Close();
            }
            else if (role.ToLower() == "admin")
            {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("InsertAdminDetails", con);
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@Name", name);
                cmd1.Parameters.AddWithValue("@Email", email);
                cmd1.Parameters.AddWithValue("@Phoneno", phoneno);
                cmd1.Parameters.AddWithValue("@Role", role);
                cmd1.Parameters.AddWithValue("@Gender", gender);
                cmd1.Parameters.AddWithValue("@Password", password);
                cmd1.Parameters.AddWithValue("@Username", username);
                Acount=Convert.ToInt32(cmd1.ExecuteNonQuery());
                con.Close();
            }
           
            Response.Redirect("SignUpConfirm.aspx");
        }
    }
}