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
    public partial class manager : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                
                conn.Open();

                string checkuser = "select name from maintable where empid= '" + Session["New"] + "'";
                SqlCommand com2 = new SqlCommand(checkuser, conn);
                string username1 = com2.ExecuteScalar().ToString().Replace(" ", "");

                mlabel.Text = "Welcome " + username1.ToString() + "    ";
                mid.Text = "Emp-Id :  " + Session["New"].ToString();
                conn.Close();
            }
            else {
                Response.Redirect("login.aspx");
            }
            
        }
        public void refreshdata1()
        {
            int k = Convert.ToInt32((uempid.Text).ToString().Replace(" ",""));
            string sql = @"select * from Trans where status='" + ustat.SelectedItem.Value + "' and Id='" +k + "' ";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = CommandType.Text;
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter();
            ad.SelectCommand = cmd;
            ad.Fill(dt);
            conn.Close();
            GridView5.DataSource = dt;
            GridView5.DataBind();
            //TemplateField tfield = new TemplateField();
            //tfield.HeaderText = "Aprove";
            //GridView5.Columns.Add(tfield);
            //CheckBox chk = new CheckBox();
            
            conn.Close();

        }
        protected void gvData_DataBound()
        {
            foreach (GridViewRow objRow in GridView5.Rows)
            {
                TableCell tcCheckCell = new TableCell();
                CheckBox chkCheckBox = new CheckBox();
                tcCheckCell.Controls.Add(chkCheckBox);
                objRow.Cells.AddAt(0, tcCheckCell);
            }
        }
        public void refreshdata2()
        {
            string sql = @"select * from Trans where status='" + ustat.SelectedItem.Value + "' ";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = CommandType.Text;
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter();
            ad.SelectCommand = cmd;
            ad.Fill(dt);
            conn.Close();
            GridView5.DataSource = dt;
            GridView5.DataBind();
            //TemplateField tfield = new TemplateField();
            //tfield.HeaderText = "Aprove";
            //GridView5.Columns.Add(tfield);
            //gvData_DataBound();
            
            conn.Close();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            

            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "INSERT INTO trans (id,exptype,expcost,date,status,transid,link) VALUES (@uid,@uexpt,@uexpc,@udate,@ustat,@transid,@link)";
            SqlCommand com1 = new SqlCommand(insertQuery, conn);
            com1.Parameters.AddWithValue("@uid", Session["New"]);
            com1.Parameters.AddWithValue("@uexpt", mdrop.SelectedItem.ToString());
            com1.Parameters.AddWithValue("@uexpc", mamount.Text);
            com1.Parameters.AddWithValue("@udate", mdate.Text);
            com1.Parameters.AddWithValue("@ustat", "Pending");
            com1.Parameters.AddWithValue("@link", mlink.Text);

            com1.Parameters.AddWithValue("@transid", newGUID.ToString());
            
            com1.ExecuteNonQuery();
            Response.Redirect("manager.aspx");
            Response.Write("Regestration is successful");
            conn.Close();
        }
        

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (((uempid.Text).Replace(" ","").ToString()).Length!=0)
            {
                refreshdata1();
            }
            else
            {
                refreshdata2();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            refreshdata2();
        }
        protected void chkSelect_CheckedChanged
                            (object sender, EventArgs e)
        {
           
            
        }

            protected void Button4_Click(object sender, EventArgs e)
        {


            //Loop through gridview rows to find checkbox 
            //and check whether it is checked or not 
            for (int i = 0; i < GridView5.Rows.Count; i++)
            {
                CheckBox chkUpdate = (CheckBox)
                   GridView5.Rows[i].Cells[0].FindControl("chkSelect");
                if (chkUpdate != null)
                {
                    if (chkUpdate.Checked)
                    {
                        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
                        conn.Open();


                        // Get the values of textboxes using findControl
                        string strID = GridView5.Rows[i].Cells[6].Text;
                        

                        string strUpdate =
                            "Update Trans set status = 'Approved'WHERE transid ='" + strID + "'";
                        //append update statement in stringBuilder 
                        SqlCommand com1 = new SqlCommand(strUpdate, conn);
                        com1.ExecuteNonQuery();
                        conn.Close();
                        

                    }
                }
            }
            Response.Redirect("manager.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "DELETE FROM Trans WHERE status='Approved'";
            SqlCommand com1 = new SqlCommand(insertQuery, conn);
            com1.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("manager.aspx");
        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView5.Rows.Count; i++)
            {
                CheckBox chkUpdate = (CheckBox)
                   GridView5.Rows[i].Cells[0].FindControl("chkSelect");
                if (chkUpdate != null)
                {
                    if (chkUpdate.Checked)
                    {
                        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegestrationConnectionString"].ConnectionString);
                        conn.Open();


                        // Get the values of textboxes using findControl
                        string strID = GridView5.Rows[i].Cells[6].Text;


                        string strUpdate =
                            "Update Trans set status = 'Approved'WHERE transid ='" + strID + "'";
                        //append update statement in stringBuilder 
                        SqlCommand com1 = new SqlCommand(strUpdate, conn);
                        com1.ExecuteNonQuery();
                        conn.Close();


                    }
                }
            }

        }
    }
}