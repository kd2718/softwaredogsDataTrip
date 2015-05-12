using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SoftwareDogs
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Add("LOGIN", false);
            txtName.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                //On top: using System.Data.SqlClient;

                //string strConnection = "Data Source=RAYDAVIDSON-PC\\SQLEXPRESS;Initial Catalog=DogsLogin;Integrated Security=SSPI;";
                string strConnection = "Data Source=RAYDAVIDSON-PC\\SQLEXPRESS;Initial Catalog=DogsLogin;Integrated Security=SSPI;";
                string strCommand = "Execute pLogin '" + txtName.Text.Replace("'", "''") + "', '" + txtPassword.Text.Replace("'", "''") + "'";
                SqlConnection conConnection = new SqlConnection(strConnection);
                conConnection.Open();
                SqlCommand cmd = new SqlCommand(strCommand, conConnection);
                SqlDataReader dr = cmd.ExecuteReader();
                
                dr.Read();
                //conConnection.Close();
                //conConnection.Dispose();

                if (1 == dr.GetInt32(0)){
                    Session.Clear();
                    Session.Add("LOGIN", true);
                    Session.Add("LOGINNAME", txtName.Text);
                    Session.Add("PASSWORD", txtPassword.Text);
                    Response.Redirect("./Menu.aspx", false);
                }
            }
            catch (Exception ex)
            {
                ;//Debugging.
                //TextBox1.Text = "Unable to connect to the database.";
                //System.Diagnostics.Debug.WriteLine(ex.Message);
            }
        }
    }
}
