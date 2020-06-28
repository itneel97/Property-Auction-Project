using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_City : System.Web.UI.Page
{

    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();
        if (!IsPostBack)
        {
            try
            {
                //data grid view show
                ds = a.select("city_sel");

                city.DataSource = ds;
                city.DataBind();

                //edit nu Change button button ni visiablity false kari
                Button2.Visible = false;


                //check state
                string state = Request.QueryString["state"];
                string get_id = Request.QueryString["id"];


                if (state == "Delete")
                {

                    cmd = a.insert("city_del");
                    cmd.Parameters.AddWithValue("@c_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("City.aspx");
                }
                else if (state == "Edit")
                {
                    // tools set
                    Button2.Visible = true;
                    Button1.Visible = false;
                    Panel1.Visible = false;

                    // select_id_query

                    ds = a.select_id("city_sel_id", get_id);

                    TextBox1.Text = ds.Tables[0].Rows[0]["c_name"].ToString();
                    DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["c_status"].ToString();
                }

            }
            catch (Exception ex)
            {
                TextBox1.Text = "First Catch_Block: " + ex.Message.ToString();
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
           
            cmd = a.insert("city_add");

            cmd.Parameters.AddWithValue("@c_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@c_status", DropDownList1.SelectedValue);
            // cmd.Parameters.AddWithValue("@c_date", date);
            cmd.ExecuteNonQuery();

            clear();
            Response.Redirect("City.aspx");
        }

        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }
    }

    public void clear()
    {
     
        TextBox1.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            string date = System.DateTime.Now.ToShortDateString() + " " + System.DateTime.Now.ToShortTimeString();

            cmd = a.insert("city_upd");

            cmd.Parameters.AddWithValue("@c_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@c_status", DropDownList1.SelectedValue);
            //  cmd.Parameters.AddWithValue("@c_date", date);
            cmd.Parameters.AddWithValue("@c_id", Request.Params.Get("id").ToString());

            cmd.ExecuteNonQuery();

            Response.Redirect("City.aspx");
        }
        catch (Exception ex)
        {
            TextBox1.Text = "Third Catch_Block: " + ex.Message.ToString();
        }
    

    }

    protected void city_PageIndexChanged(object sender, DataGridPageChangedEventArgs e)
    {
        city.CurrentPageIndex = e.NewPageIndex;
        ds = a.select("city_sel");

        city.DataSource = ds;
        city.DataBind();

    }
}