using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_index : System.Web.UI.Page
{
    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds, ds1, ds2, ds3, ds4, ds5, ds6, ds7, ds8;
    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();

        try
        {
            ds = a.select("dashboard_user_count");
            Label1.Text = ds.Tables[0].Rows[0]["u"].ToString();


            ds1 = a.select("dashboard_buyer_count");
            Label2.Text = ds1.Tables[0].Rows[0]["u"].ToString();


            ds2 = a.select("dashboard_seller_count");
            Label3.Text = ds2.Tables[0].Rows[0]["u"].ToString();

            ds3 = a.select("dashboard_property_count");
            Label4.Text = ds3.Tables[0].Rows[0]["u"].ToString();

            ds4 = a.select("dashboard_auction_count");
            Label5.Text = ds4.Tables[0].Rows[0]["u"].ToString();

            ds5 = a.select("dashboard_city_count");
            Label9.Text = ds5.Tables[0].Rows[0]["u"].ToString();

            ds6 = a.select("dashboard_category_count");
            Label7.Text = ds6.Tables[0].Rows[0]["u"].ToString();

            ds7 = a.select("dashboard_feedback_count");
            Label8.Text = ds7.Tables[0].Rows[0]["u"].ToString();

            ds8 = a.select("dashboard_result_count");
            Label6.Text = ds8.Tables[0].Rows[0]["u"].ToString();
        }

        catch (Exception ex)
        {

        }
    }
}