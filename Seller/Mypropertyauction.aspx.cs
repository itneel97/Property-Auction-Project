using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Seller_Mypropertyauction : System.Web.UI.Page
{
    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds, ds1;
    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();

        try
        {
            ds = a.select_id("seller_myproperty_id", Session["uemail"].ToString());


            Image2.ImageUrl = "../upload/seller/" + ds.Tables[0].Rows[0]["u_image"].ToString();


            Label3.Text = ds.Tables[0].Rows[0]["u_name"].ToString();

            ds1 = a.select_id("buyer_property_auction_sel_id", Session["uid"].ToString());
            if (ds1.Tables[0].Rows.Count > 0)
            {
                property.DataSource = ds1;
                property.DataBind();
            }
            else
            {
                Label1.Visible = true;
                Panel2.Visible = false;


            }

            string state = Request.QueryString["state"];
            string get_id = Request.QueryString["id"];




        }
        catch (Exception ex)
        {
            Label6.Text = ex.Message.ToString();
        }
    }
}