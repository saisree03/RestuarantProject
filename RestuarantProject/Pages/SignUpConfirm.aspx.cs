using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestuarantProject.Pages
{
    public partial class SignUpConfirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lgn_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}