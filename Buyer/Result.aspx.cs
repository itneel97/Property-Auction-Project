using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Buyer_Result : System.Web.UI.Page
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


            Image1.ImageUrl = "../upload/buyer/" + ds.Tables[0].Rows[0]["u_image"].ToString();
            HiddenField1.Value = ds.Tables[0].Rows[0]["u_image"].ToString();

            Label1.Text = ds.Tables[0].Rows[0]["u_name"].ToString();

            ds1 = a.select_id("result_sel_id", Session["uid"].ToString());
            if (ds1.Tables[0].Rows.Count > 0)
            {
                result.DataSource = ds1;
                result.DataBind();
            }
            else
            {
                Label6.Visible = true;
               


            }

           
            
            }

     
        catch (Exception ex)
        {
            
        }
    }
}