using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;

public partial class Client_Forgotpassword : System.Web.UI.Page
{
    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

        try
        {
            ds = a.select_login("forgot_pass",DropDownList1.SelectedValue,TextBox1.Text);
            if (ds.Tables[0].Rows.Count > 0)
            {
                 string pass = ds.Tables[0].Rows[0]["u_password"].ToString();
               // string con = ds.Tables[0].Rows[0]["u_contact"].ToString();
                string con = "9723001502";
                WebClient client = new WebClient();
                string str = client.DownloadString("http://smsc.biz/httpapi/send?username=it.neel97@yahoo.com&password=huneelchu&sender_id=PROMOTIONAL&route=P&phonenumber=" + con + "&message= Dear " + DropDownList1.SelectedValue + ",\r\n" + "Your Password For PROPERTY DEALS Account Is.." + pass + "\r\n" + "Please Do Not Share With Anyone." + "\r\n" + "Thank You");

                
                Response.Redirect("Signin.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid E-mail..!!";
            }
        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = ex.Message.ToString();
        }
    
    }
}