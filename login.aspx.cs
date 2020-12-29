using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication8
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count (*) from maintable where empid='" + loginid.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select password from maintable where empid='" + loginid.Text + "' ";
                string nameofperson = "select role from maintable where empid='" + loginid.Text + "' ";
                SqlCommand passcom = new SqlCommand(checkPasswordQuery, conn);
                SqlCommand passcom2 = new SqlCommand(nameofperson, conn);
                string password1 = passcom.ExecuteScalar().ToString().Replace(" ","");
                string nop = passcom2.ExecuteScalar().ToString().Replace(" ", "");
                if (password1 == loginpass.Text)
                {
                    Session["New"] = loginid.Text;
                    Response.Write("password is correct");
                    if (nop == "Employee")
                    {
                        Response.Redirect("user.aspx");
                    }
                    else
                    {
                        Response.Redirect("manager.aspx");
                    }
                }
                else
                {
                    Response.Write("password is incorrect");
                }
            }
            else
            {
                Response.Write("User doesn't exist");
            }
        }
    }
}