using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Client_Signin : System.Web.UI.Page
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
            ds = c.select_login_user("client_sel",TextBox1.Text, TextBox2.Text,DropDownList1.SelectedValue.ToString());


            if (DropDownList1.SelectedValue == "Buyer")
            {

                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["uemail"] = TextBox1.Text;
                    Session["type"] = DropDownList1.SelectedValue.ToString();
                    Session["uid"] = ds.Tables[0].Rows[0]["u_id"].ToString();
                    Response.Redirect("../Buyer/Index.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid Username Or Password..!!";
                }
            }
            else if (DropDownList1.SelectedValue == "Seller")
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["uemail"] = TextBox1.Text;
                    Session["type"] = DropDownList1.SelectedValue.ToString();
                    Session["uid"] = ds.Tables[0].Rows[0]["u_id"].ToString();
                    Response.Redirect("../Seller/Index.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid Username Or Password..!!";
                }

            }


        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = ex.Message.ToString();
        }
    }
}