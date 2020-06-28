using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Login : System.Web.UI.Page
{
    Admin c = new Admin();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        c.connection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            ds = c.select_login("admin_sel",TextBox1.Text, TextBox2.Text);

            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["login"] = TextBox1.Text;
                Session["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                Session["last"] = ds.Tables[0].Rows[0]["l_date"].ToString();
                Response.Redirect("Index.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid Username Or Password..!!";
            }

        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = ex.Message.ToString();
        }
    }
}