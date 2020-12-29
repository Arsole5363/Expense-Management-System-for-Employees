using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

using System.ComponentModel;
using System.Data;
using System.Drawing;

using System.Text;
using System.Threading.Tasks;


namespace WebApplication8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
                conn.Open();
                int k = Convert.ToInt32(TextBox1.Text);
                string checkuser="select count (*) from maintable where empid='"+ k + "'";
                SqlCommand com = new SqlCommand(checkuser,conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
               if (temp == 1)
                {

                    Response.Write("User Already Exist");
                    TextBox1.Text = null;
                   // Response.Redirect("WebForm1.aspx"); 
                    

                }
                conn.Close();

           }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    try
        //   {
        //        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
        //        conn.Open();
        //       string insertQuery = "INSERT INTO maintable (empid,name,password,role) VALUES (@eid,@ename,@epassword,@erole)";
        //        SqlCommand com = new SqlCommand(insertQuery, conn);
        //        com.Parameters.AddWithValue("@eid", TextBox1.Text);
        //        com.Parameters.AddWithValue("@ename", TextBox2.Text);
        //        com.Parameters.AddWithValue("@epassword", TextBox3.Text);
        //        com.Parameters.AddWithValue("@erole", DropDownList1.SelectedItem.ToString());
        //     com.ExecuteNonQuery();
        //        Response.Redirect("WebForm2.aspx");
        //        Response.Write("Regestration is successful");
        //        conn.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("Error Occured"+ex.ToString());
        //    }
            
        //}

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "INSERT INTO maintable (empid,name,password,role) VALUES (@eid,@ename,@epassword,@erole)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@eid", TextBox1.Text);
            com.Parameters.AddWithValue("@ename", TextBox2.Text);
            com.Parameters.AddWithValue("@epassword", TextBox3.Text);
            com.Parameters.AddWithValue("@erole", DropDownList1.SelectedItem.ToString());
            com.ExecuteNonQuery();
            Response.Redirect("login.aspx");
            Response.Write("Regestration is successful");
            conn.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}