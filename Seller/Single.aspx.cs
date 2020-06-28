using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Seller_Single : System.Web.UI.Page
{
    Admin a = new Admin();
  
    DataSet ds;
   

    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();




        try
        {
            //string state = Request.QueryString["state"];
            string get_id = Request.QueryString["id"];

            ds = a.select_id("property_sel_id", get_id);



           

            Image1.ImageUrl = "../upload/property/" + ds.Tables[0].Rows[0]["p_image"].ToString();
           
            Label1.Text = ds.Tables[0].Rows[0]["p_name"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["cat_name"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["c_name"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["p_id"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["p_details"].ToString();
            Label6.Text = ds.Tables[0].Rows[0]["p_baseprice"].ToString();
            Label7.Text = ds.Tables[0].Rows[0]["p_location"].ToString();
             Label8.Text = ds.Tables[0].Rows[0]["p_status"].ToString();
            Label9.Text = ds.Tables[0].Rows[0]["p_startdate"].ToString();
            Label10.Text = ds.Tables[0].Rows[0]["p_enddate"].ToString();



        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message.ToString();
        }
    }
}