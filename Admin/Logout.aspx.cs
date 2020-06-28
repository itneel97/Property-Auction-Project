using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Logout : System.Web.UI.Page
{
    Admin c = new Admin();
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        c.connection();

        cmd = c.insert("time_update");
        cmd.Parameters.AddWithValue("@l_date",System.DateTime.Now.ToShortDateString()+":"+ System.DateTime.Now.ToShortTimeString());
        cmd.Parameters.AddWithValue("@username", Session["login"].ToString());
        cmd.ExecuteNonQuery();

        Session["login"] = "";
        Session["image"] = "";
        Session["last"] = "";

        Response.Redirect("Login.aspx");
    }
}