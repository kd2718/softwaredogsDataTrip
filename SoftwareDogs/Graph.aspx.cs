using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoftwareDogs
{
    public partial class Graph : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Boolean)Session["LOGIN"] == false) Response.Redirect("./default.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //imgHeader.ImageUrl = "pix/Test.png";
            imgHeader.ImageUrl = "pix/Test.png";
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Menu.aspx", false);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
