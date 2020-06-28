using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Sellers : System.Web.UI.Page
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
                ds = a.select("sellers_sel");

                user.DataSource = ds;
                user.DataBind();


                //check state
                string state = Request.QueryString["state"];
                string get_id = Request.QueryString["id"];


                if (state == "Delete")
                {

                    cmd = a.insert("sellers_del");
                    cmd.Parameters.AddWithValue("@u_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Sellers.aspx");
                }
                else if (state == "Active")
                {

                    cmd = a.insert("buyers_act");
                    cmd.Parameters.AddWithValue("@u_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Sellers.aspx");
                }

                else if (state == "Deactive")
                {

                    

                    cmd = a.insert("buyers_dact");
                    cmd.Parameters.AddWithValue("@u_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Sellers.aspx");
                }

            }
            catch (Exception ex)
            {

            }

        }
    }

    protected void user_PageIndexChanged(object sender, DataGridPageChangedEventArgs e)
    {
        user.CurrentPageIndex = e.NewPageIndex;
        ds = a.select("sellers_sel");

        user.DataSource = ds;
        user.DataBind();

    }
}