using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Auction : System.Web.UI.Page
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
                ds = a.select("auction_sel_all");

                auction.DataSource = ds;
                auction.DataBind();

                //check state
                string state = Request.QueryString["state"];
                string get_id = Request.QueryString["id"];


                if (state == "Delete")
                {
                    cmd = a.insert("auction_del");
                    cmd.Parameters.AddWithValue("@a_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Auction.aspx");

                }


                else if (state == "Active")
                {
                    cmd = a.insert("auction_act");
                    cmd.Parameters.AddWithValue("@a_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Auction.aspx");

                }
                else if (state == "Deactive")
                {
                    cmd = a.insert("auction_dact");
                    cmd.Parameters.AddWithValue("@a_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Auction.aspx");

                }
            }
            catch (Exception ex)
            {

            }

        }
    
    
    
    }
    protected void auction_PageIndexChanged(object sender, DataGridPageChangedEventArgs e)
    {
        auction.CurrentPageIndex = e.NewPageIndex;
        ds = a.select("auction_sel_all");

        auction.DataSource = ds;
        auction.DataBind();

    }

}