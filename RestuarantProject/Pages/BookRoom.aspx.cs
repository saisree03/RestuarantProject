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
    public partial class BookRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            string username = Session["Username"].ToString();
            Name_Txt.Text = username;
        }

        protected void Book_btn_Click(object sender, EventArgs e)
        {
            string uname = string.Empty, Gender = string.Empty, Nationality = string.Empty, mobile = string.Empty, email = string.Empty,
            Idtype = string.Empty,Idno=string.Empty, city = string.Empty, state = string.Empty, country = string.Empty,RoomType=string.Empty,location=string.Empty,Address=string.Empty;
            int zip,RoomNo, Guests, Nights;
            DateTime Dob,CheckIn, CheckOut;            
            uname = Name_Txt.Text;
            Gender = DropDownList4.SelectedItem.Text;
            Nationality = Nan_txt.Text;
            mobile = Mob_txt.Text;
            email = Email_txt.Text;
            Idtype = DropDownList1.SelectedItem.Text;
            Idno = IdNo_txt.Text;
            Address = addr_txt.Text;
            city = City_txt.Text;
            state = State_txt.Text;
            country = Country_txt.Text;
            location= Location_txt.Text;
            RoomType=DropDownList3.SelectedItem.Text;
            zip=Convert.ToInt32(Zip_txt.Text);
            RoomNo=Convert.ToInt32(DropDownList2.SelectedItem.Text);
            Guests = Convert.ToInt32(Guests_txt.Text);
            Dob=Convert.ToDateTime(Dob_txt.Text);
            CheckIn = Convert.ToDateTime(CheckIn_txt.Text);
            CheckOut=Convert.ToDateTime(CheckOut_txt.Text);
            Nights = Convert.ToInt32(NoOfNigts_txt.Text);
            if(FileUpload1.PostedFile!=null && FileUpload1.PostedFile.ContentLength>0)
            {
                string fn=System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("images" + "\\" + fn);
            }
            SqlConnection con = SqlCon.RequriedConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("InsertHotelRegistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserName", uname);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@DateOfBirth", Dob);
            cmd.Parameters.AddWithValue("@Nationality", Nationality);
            cmd.Parameters.AddWithValue("@PhoneNo", mobile);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@IdType", Idtype);
            cmd.Parameters.AddWithValue("@IdNo", Idno);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@City", city);
            cmd.Parameters.AddWithValue("@State", state);
            cmd.Parameters.AddWithValue("@Country", country);
            cmd.Parameters.AddWithValue("@Postal", zip);
            cmd.Parameters.AddWithValue("@Checkin", CheckIn);
            cmd.Parameters.AddWithValue("@Checkout", CheckOut);
            cmd.Parameters.AddWithValue("@Guests", Guests);
            cmd.Parameters.AddWithValue("@RType", RoomType);
            cmd.Parameters.AddWithValue("@RNo", RoomNo);
            cmd.Parameters.AddWithValue("@Location", location);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("RoomConfirmation.aspx");
        }
    }
}