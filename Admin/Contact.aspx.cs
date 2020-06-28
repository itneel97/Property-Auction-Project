using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Contact : System.Web.UI.Page
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

                contact.DataSource = ds;
                contact.DataBind();
                
                //dynemically data fatch karava... textbox ma data page load time aj aavi jase...

                TextBox1.Text = ds.Tables[0].Rows[0]["name"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["address"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["contact_no"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["email"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["website"].ToString();

                //check state
                string state = Request.QueryString["state"];
                string get_id = Request.QueryString["id"];


                if (state == "Delete")
                {

                    cmd = a.insert("contact_del");
                    cmd.Parameters.AddWithValue("@id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Contact.aspx");
                }

            }


            catch (Exception ex)
            {
                TextBox2.Text = "First Catch_Block:-" + ex.Message.ToString();
            }

        }
    }

    
    public void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
    
        try
        {

            cmd = a.insert("contact_upd");

            cmd.Parameters.AddWithValue("@name",TextBox1.Text);
            cmd.Parameters.AddWithValue("@address",TextBox2.Text);
            cmd.Parameters.AddWithValue("@contact_no",TextBox3.Text);
            cmd.Parameters.AddWithValue("@email", TextBox4.Text);
            cmd.Parameters.AddWithValue("@website", TextBox5.Text);
          
            cmd.ExecuteNonQuery();

            clear();
            Response.Redirect("Contact.aspx");
        }

        catch (Exception ex)
        {
            TextBox2.Text = ex.Message.ToString();
        }
         

    }

    protected void contact_PageIndexChanged(object sender, DataGridPageChangedEventArgs e)
    {
        contact.CurrentPageIndex = e.NewPageIndex;
        ds = a.select("contact_sel");

        contact.DataSource = ds;
        contact.DataBind();

    }
}
    

