using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Feedback : System.Web.UI.Page
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
                ds = a.select("feedback_sel");

                feedback.DataSource = ds;
                feedback.DataBind();


                //check state
                string state = Request.QueryString["state"];
                string get_id = Request.QueryString["id"];


                if (state == "Delete")
                {

                    cmd = a.insert("feedback_del");
                    cmd.Parameters.AddWithValue("@f_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Feedback.aspx");
                }

            }


            catch (Exception ex)
            {
                
            }

        }

    }
    protected void feedback_PageIndexChanged(object sender, DataGridPageChangedEventArgs e)
    {
        feedback.CurrentPageIndex = e.NewPageIndex;
        ds = a.select("feedback_sel");

        feedback.DataSource = ds;
        feedback.DataBind();

    }
}