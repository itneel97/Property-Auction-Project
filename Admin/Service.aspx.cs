using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Service : System.Web.UI.Page
{
    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds;
    string ig = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        a.connection();

        if (!IsPostBack)
        {

            try
            {

                ds = a.select("service_sel");

                service.DataSource = ds;
                service.DataBind();

                //edit nu Change button button ni visiablity false kari

                Button2.Visible = false;
                Image1.Visible = false;

                string state = Request.QueryString["state"];
                string get_id = Request.QueryString["id"];



                if (state == "Delete")
                {

                    cmd = a.insert("service_del");
                    cmd.Parameters.AddWithValue("@sr_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Service.aspx");
                }
                else if (state == "Edit")
                {
                    Button2.Visible = true;
                    Button1.Visible = false;
                    Panel1.Visible = false;
                    Panel2.Visible=true;
                    Image1.Visible = true;
                    ds = a.select_id("service_sel_id", get_id);
                    TextBox1.Text = ds.Tables[0].Rows[0]["sr_title"].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0]["sr_detail"].ToString();
                    DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["sr_status"].ToString();
                    Image1.ImageUrl = "../upload/service/" + ds.Tables[0].Rows[0]["sr_image"].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0]["sr_createddate"].ToString();
                    HiddenField1.Value = ds.Tables[0].Rows[0]["sr_image"].ToString();
                }


            }
            catch (Exception ex)
            {
                TextBox1.Text = ex.Message.ToString();
            }

        }

    }






    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {



            string date = System.DateTime.Now.ToShortDateString() + " " + System.DateTime.Now.ToShortTimeString();



            string str_img = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());

            str_img = System.DateTime.Now.Millisecond + str_img;
            string str_path = "../upload/service/" + str_img;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(str_path).ToString());


            cmd = a.insert("service_add");

            cmd.Parameters.AddWithValue("@sr_title", TextBox1.Text);
            cmd.Parameters.AddWithValue("@sr_detail", TextBox2.Text);
            cmd.Parameters.AddWithValue("@sr_status", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@sr_image", str_img.ToString());
            cmd.Parameters.AddWithValue("@sr_createddate", date);
           
            cmd.ExecuteNonQuery();

            clear();
            Response.Redirect("Service.aspx");
        }

        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }

    }

        public void clear()
        {
        TextBox1.Text = "";
        TextBox2.Text = "";
            TextBox3.Text = "";
       
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                
          //  string date = System.DateTime.Now.ToShortDateString() + " " + System.DateTime.Now.ToShortTimeString();


                cmd = a.insert("service_upd");


                string str_img = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());

                if (str_img.Length > 0)
                {
                    str_img = System.DateTime.Now.Millisecond + str_img;
                    string str_path = "../upload/service/" + str_img;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath(str_path).ToString());
                    ig = str_img;
                }
                else
                {
                    ig = HiddenField1.Value;
                }


                 cmd.Parameters.AddWithValue("@sr_id", Request.Params.Get("id").ToString());
                 cmd.Parameters.AddWithValue("@sr_title", TextBox1.Text);
                 cmd.Parameters.AddWithValue("@sr_detail", TextBox2.Text);
                 cmd.Parameters.AddWithValue("@sr_status", DropDownList1.SelectedValue);
                 cmd.Parameters.AddWithValue("@sr_image", ig.ToString());
                 cmd.Parameters.AddWithValue("@sr_updatedate", TextBox3.Text);


                
                cmd.ExecuteNonQuery();

                Response.Redirect("Service.aspx");
            }

            catch (Exception ex)
            {
                TextBox1.Text = ex.Message.ToString();
            }
        }

        protected void service_PageIndexChanged(object sender, DataGridPageChangedEventArgs e)
        {
            service.CurrentPageIndex = e.NewPageIndex;
            ds = a.select("service_sel");

            service.DataSource = ds;
            service.DataBind();

        }
        }

