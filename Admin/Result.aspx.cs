using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Result : System.Web.UI.Page
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
                ds = a.select("result_sel");

                result.DataSource = ds;
                result.DataBind();

                //check state
                string state = Request.QueryString["state"];
                string get_id = Request.QueryString["id"];


                if (state == "Delete")
                {
                    cmd = a.insert("result_del");
                    cmd.Parameters.AddWithValue("@r_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Result.aspx");

                }


                
            }
            catch (Exception ex)
            {
               
            }
        }
    }
    protected void result_PageIndexChanged(object sender, DataGridPageChangedEventArgs e)
    {
        result.CurrentPageIndex = e.NewPageIndex;
        ds = a.select("result_sel");

        result.DataSource = ds;
        result.DataBind();

    }
}