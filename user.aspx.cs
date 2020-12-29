using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

using System.Data;
namespace WebApplication8
{
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null) {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
                conn.Open();
                
                string checkuser = "select name from maintable where empid= '" + Session["New"] + "'";
                SqlCommand com2 = new SqlCommand(checkuser, conn);
                string username1 = com2.ExecuteScalar().ToString().Replace(" ", "");

                userlabel.Text = "Welcome "+username1.ToString()+"    ";
                userempid.Text = "Emp-Id :  "+Session["New"].ToString();

                //new code
                



            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("login.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "INSERT INTO trans (id,exptype,expcost,date,status,transid,link) VALUES (@uid,@uexpt,@uexpc,@udate,@ustat,@transid,@link)";
            SqlCommand com1 = new SqlCommand(insertQuery, conn);
            com1.Parameters.AddWithValue("@uid", Session["New"]);
            com1.Parameters.AddWithValue("@uexpt", userdrop.SelectedItem.ToString());
            com1.Parameters.AddWithValue("@uexpc", useramount.Text);
            com1.Parameters.AddWithValue("@udate", userdate.Text);
            com1.Parameters.AddWithValue("@link", ulink.Text);
            com1.Parameters.AddWithValue("@ustat", "Pending");
           com1.Parameters.AddWithValue("@transid", newGUID.ToString());
            //com1.Parameters.AddWithValue("@uf", userimag.HasFile);
            com1.ExecuteNonQuery();
            Response.Redirect("user.aspx");
            Response.Write("Regestration is successful");
            conn.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            string sql = @"select * from Trans where status='" + userlist.SelectedItem.Value + "' and Id='"+Session["New"]+"' ";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = CommandType.Text;
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter();
            ad.SelectCommand = cmd;
            ad.Fill(dt);
            conn.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void userdate_TextChanged(object sender, EventArgs e)
        {

        }
    }
}