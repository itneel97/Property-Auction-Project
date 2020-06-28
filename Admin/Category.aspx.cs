using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_category : System.Web.UI.Page
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

                ds = a.select("category_sel");

                category.DataSource = ds;
                category.DataBind();

                //edit nu Change button button ni visiablity false kari
               
                Button2.Visible = false;
                Image1.Visible = false;

                string state = Request.QueryString["state"];
                string get_id = Request.QueryString["id"];



                if (state == "Delete")
                {

                    cmd = a.insert("category_del");
                    cmd.Parameters.AddWithValue("@cat_id", get_id.ToString());
                    cmd.ExecuteNonQuery();

                    Response.Redirect("Category.aspx");
                }
                else if (state == "Edit")
                {
                    Button2.Visible = true;
                    Button1.Visible = false;
                    Panel1.Visible = false;
                    Image1.Visible = true;
                    ds = a.select_id("category_sel_id", get_id);
                    TextBox1.Text = ds.Tables[0].Rows[0]["cat_name"].ToString();
                    DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["cat_status"].ToString();
                    Image1.ImageUrl  = "../upload/category/" + ds.Tables[0].Rows[0]["cat_image"].ToString();

                    HiddenField1.Value = ds.Tables[0].Rows[0]["cat_image"].ToString();
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
            string str_path = "../upload/category/" + str_img;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(str_path).ToString());


            cmd = a.insert("category_add");

            cmd.Parameters.AddWithValue("@cat_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@cat_status", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@cat_date", date);
            cmd.Parameters.AddWithValue("@cat_image", str_img.ToString());
            cmd.ExecuteNonQuery();

            clear();
            Response.Redirect("Category.aspx");
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

                cmd = a.insert("category_udp");


                string str_img = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());

                if (str_img.Length > 0)
                {
                    str_img = System.DateTime.Now.Millisecond + str_img;
                    string str_path = "../upload/category/" + str_img;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath(str_path).ToString());
                    ig = str_img;
                }
                else
                {
                    ig = HiddenField1.Value;
                }


                cmd.Parameters.AddWithValue("@cat_name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@cat_status", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@cat_id", Request.Params.Get("id").ToString());
                cmd.Parameters.AddWithValue("@cat_image",ig.ToString());
                cmd.ExecuteNonQuery();

                Response.Redirect("Category.aspx");
            }

            catch (Exception ex)
            {
                TextBox1.Text = ex.Message.ToString();
            }
        }

        protected void category_PageIndexChanged(object sender, DataGridPageChangedEventArgs e)
        {
            category.CurrentPageIndex = e.NewPageIndex;
            ds = a.select("category_sel");

            category.DataSource = ds;
            category.DataBind();

        }
}