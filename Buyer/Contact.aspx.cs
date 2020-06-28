using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client_Contact : System.Web.UI.Page
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
                ds = a.select("contact_sel");
                /*
                contact.DataSource = ds;
                contact.DataBind();
                */
                //dynemically data fatch karava... textbox ma data page load time aj aavi jase...

                Label1.Text = ds.Tables[0].Rows[0]["name"].ToString();
                Label2.Text = ds.Tables[0].Rows[0]["address"].ToString();
                Label3.Text = ds.Tables[0].Rows[0]["contact_no"].ToString();
                Label4.Text = ds.Tables[0].Rows[0]["email"].ToString();
                Label5.Text = ds.Tables[0].Rows[0]["website"].ToString();

                /*check state
                string state = Request.QueryString["state"];
                string get_id = Request.QueryString["id"];
                */

               

            }


            catch (Exception ex)
            {
             //   TextBox2.Text = "First Catch_Block:-" + ex.Message.ToString();
            }

        }


    }
    public void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string date = System.DateTime.Now.ToShortDateString() + " " + System.DateTime.Now.ToShortTimeString();

            cmd = a.insert("feedback_add");

              cmd.Parameters.AddWithValue("@name", TextBox1.Text);
              cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@your_msg", TextBox3.Text);
            cmd.Parameters.AddWithValue("@c_date", date);
            cmd.ExecuteNonQuery();

            clear();

            Response.Redirect("Contact.aspx");
           
        }

        catch (Exception ex)
        {
           // TextBox1.Text = ex.Message.ToString();
        }

    }
}