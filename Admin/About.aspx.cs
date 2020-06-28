using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_About : System.Web.UI.Page
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

                about.DataSource = ds;
                about.DataBind();

                //edit nu Change button button ni visiablity false kari
                Button2.Visible = false;


                //check state
                string state = Request.QueryString["state"];
                string get_id = Request.QueryString["id"];


                if (state == "Delete")
                {

                    cmd = a.insert("about_del");
                    cmd.Parameters.AddWithValue("@id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("About.aspx");
                }

                else if (state == "Edit")
                {
                    // tools set
                    Button2.Visible = true;
                    Button1.Visible = false;
                    Panel1.Visible = false;

                    // select_id_query

                    ds = a.select_id("about_sel_id",get_id);

                    TextBox1.Text = ds.Tables[0].Rows[0]["message"].ToString();

                }

            }




            catch (Exception ex)
            {
                TextBox1.Text ="First CatchBlock"+ ex.Message.ToString();
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string date = System.DateTime.Now.ToShortDateString()+" "+System.DateTime.Now.ToShortTimeString();

            cmd = a.insert("about_add");

            cmd.Parameters.AddWithValue("@message",TextBox1.Text);
            cmd.Parameters.AddWithValue("@c_date",date);
            cmd.ExecuteNonQuery();

            clear();
            Response.Redirect("About.aspx");
        }

        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();  
        }
    }

    public void clear()
    {
        TextBox1.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
             string date = System.DateTime.Now.ToShortDateString()+" "+System.DateTime.Now.ToShortTimeString();

            cmd = a.insert("about_upd");
            
            cmd.Parameters.AddWithValue("@message", TextBox1.Text);
          //  cmd.Parameters.AddWithValue("@c_date", date);
            cmd.Parameters.AddWithValue("@id",Request.Params.Get("id").ToString());
            
            cmd.ExecuteNonQuery();
           
            Response.Redirect("About.aspx");
        }
        catch (Exception ex)
        {

        }
    }
    protected void about_PageIndexChanged(object sender,DataGridPageChangedEventArgs e)
    {
        about.CurrentPageIndex = e.NewPageIndex;
        ds = a.select("about_sel");

        about.DataSource = ds;
        about.DataBind();

    }
}