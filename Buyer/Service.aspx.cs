using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_Service : System.Web.UI.Page
{
    Admin c = new Admin();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();

        try
        {
            ds = c.select("service_sel");

            service.DataSource = ds;
            service.DataBind();

            

        }
        catch (Exception ex)
        {

        }
    }
}