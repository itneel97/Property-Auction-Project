using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Seller_Myproperty : System.Web.UI.Page
{
    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds,ds1;
    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();

        try
        {
            ds = a.select_id("seller_myproperty_id", Session["uemail"].ToString());


            Image1.ImageUrl = "../upload/seller/" + ds.Tables[0].Rows[0]["u_image"].ToString();
            
           // HiddenField1.Value = ds.Tables[0].Rows[0]["u_image"].ToString();

            Label1.Text = ds.Tables[0].Rows[0]["u_name"].ToString();



            ds1 = a.select_id("seller_property_sel_id", Session["uemail"].ToString());
            if (ds1.Tables[0].Rows.Count > 0)
            {
                property.DataSource = ds1;
                property.DataBind();
            }
            else
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Label6.Visible = true;
                
            }


            string state = Request.QueryString["state"];
            string get_id = Request.QueryString["id"];


            if (state == "Delete")
            {

                cmd = a.insert("property_del");
                cmd.Parameters.AddWithValue("@p_id", get_id.ToString());
                cmd.ExecuteNonQuery();

                Response.Redirect("Myproperty.aspx");
            }

 


        }
        catch (Exception ex)
        {
           //  Label6.Text = ex.Message.ToString();
        }
    }
}