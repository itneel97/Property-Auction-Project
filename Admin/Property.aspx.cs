using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Property : System.Web.UI.Page
{
    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds,ds1;

    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();

        if (!IsPostBack)
        {
            try
            {
                //data grid view show
                ds1 = a.select("property_sel");

                property.DataSource = ds1;
                property.DataBind();

                //check state
                string state = Request.QueryString["state"];
                string get_id = Request.QueryString["id"];


                if (state == "Delete")
                {
                    cmd = a.insert("property_del");
                    cmd.Parameters.AddWithValue("@p_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Property.aspx");

                }
                else if (state == "View")
                {
                    Panel2.Visible = true;
                    Button1.Visible = true;
                    Panel1.Visible = false;


                    //select_id_query

                    ds = a.select_id("property_sel_id",get_id);

                    Label1.Text = ds.Tables[0].Rows[0]["u_name"].ToString();
                    Image2.ImageUrl = "../upload/seller/" + ds.Tables[0].Rows[0]["u_image"].ToString();
                    Label4.Text = ds.Tables[0].Rows[0]["u_type"].ToString();
                    Label5.Text = ds.Tables[0].Rows[0]["u_contact"].ToString();
                    Label6.Text = ds.Tables[0].Rows[0]["u_email"].ToString();
                    Label7.Text = ds.Tables[0].Rows[0]["gender"].ToString();
                    Label3.Text = ds.Tables[0].Rows[0]["cat_name"].ToString();
                    Label8.Text = ds.Tables[0].Rows[0]["p_name"].ToString();
                    Label9.Text = ds.Tables[0].Rows[0]["p_details"].ToString();
                    Label10.Text = ds.Tables[0].Rows[0]["p_location"].ToString();
                    Label16.Text = ds.Tables[0].Rows[0]["c_name"].ToString();
                    Image1.ImageUrl = "../upload/property/" + ds.Tables[0].Rows[0]["p_image"].ToString();
                    Label11.Text = ds.Tables[0].Rows[0]["p_baseprice"].ToString();
                    Label12.Text = ds.Tables[0].Rows[0]["p_status"].ToString();
                    Label15.Text = ds.Tables[0].Rows[0]["created_date"].ToString();
                    Label13.Text = ds.Tables[0].Rows[0]["p_startdate"].ToString();
                    Label14.Text = ds.Tables[0].Rows[0]["p_enddate"].ToString();

                }
                else if (state == "Active")
                {
                    cmd = a.insert("property_act");
                    cmd.Parameters.AddWithValue("@p_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Property.aspx");

                }
                else if (state == "Deactive")
                {
                    cmd = a.insert("property_dact");
                    cmd.Parameters.AddWithValue("@p_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Property.aspx");

                }
            }
            catch (Exception ex)
            {

            }
       
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Property.aspx");
    }
    protected void property_PageIndexChanged(object sender, DataGridPageChangedEventArgs e)
    {
        property.CurrentPageIndex = e.NewPageIndex;
        ds = a.select("property_sel");

        property.DataSource = ds;
        property.DataBind();

    }
}