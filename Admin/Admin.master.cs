using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (Session["login"].ToString()!= null && Session["image"].ToString()!= null && Session["last"].ToString()!=null)
            {
                Label1.Text = Session["login"].ToString();
                Image1.ImageUrl = "img/" + Session["image"].ToString();
                Label2.Text = Session["last"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }
        catch (Exception ex)
        {
            Response.Redirect("Login.aspx");
        }
    }

}