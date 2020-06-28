using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Client_Index : System.Web.UI.Page
{
    Admin c = new Admin();
    DataSet ds,ds1;
    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();

        try
        {
            ds = c.select("category_sel_act");

            category.DataSource = ds;
            category.DataBind();

            ds1 = c.select("property_desc_ord");
            property.DataSource = ds1;
            property.DataBind();


        }
        catch (Exception ex)
        {
           
        }
    }
}