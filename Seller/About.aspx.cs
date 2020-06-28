using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client_About : System.Web.UI.Page
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
                ds = a.select("about_sel");
                /*
                contact.DataSource = ds;
                contact.DataBind();
                */
                //dynemically data fatch karava... textbox ma data page load time aj aavi jase...

                Label1.Text = ds.Tables[0].Rows[1]["message"].ToString();
                Label2.Text = ds.Tables[0].Rows[2]["message"].ToString();
               



            }


            catch (Exception ex)
            {
                //   TextBox2.Text = "First Catch_Block:-" + ex.Message.ToString();
            }

        }
    }
}