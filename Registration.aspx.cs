using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quirks
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            ViewState["NameOfUser"] = txtFirstName.Text + txtLastName.Text;
         

            Response.Redirect("Home.aspx");
            
            Server.Transfer("Home.aspx");
        }

        protected void txtDOB_TextChanged(object sender, EventArgs e)
        {

        }


    }
}