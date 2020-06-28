using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Seller_Editproperty : System.Web.UI.Page
{
    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds, ds1, ds2;
    string ig = "";


    protected void Page_Load(object sender, EventArgs e)
    {

        a.connection();

        TextBox4.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");

        if (!IsPostBack)
        {
            DropDownList3.Items.Insert(0, "--Select--");
            DropDownList3.Items.Insert(1, "Active");
            DropDownList3.Items.Insert(2, "Deactive");


            ds1 = a.select("city_sel");
            DropDownList1.DataSource = ds1;
            DropDownList1.DataTextField = "c_name";
            DropDownList1.DataValueField = "c_id";
            DropDownList1.DataBind();

            ds2 = a.select("category_sel");
            DropDownList2.DataSource = ds2;
            DropDownList2.DataTextField = "cat_name";
            DropDownList2.DataValueField = "cat_id";
            DropDownList2.DataBind();
            try
            {
                string state = Request.QueryString["state"];
                string get_id = Request.QueryString["id"];

                ds = a.select_id("property_sel_id", get_id);


                
                DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["c_id"].ToString();
                DropDownList2.SelectedValue = ds.Tables[0].Rows[0]["cat_id"].ToString();

                DropDownList3.SelectedValue = ds.Tables[0].Rows[0]["p_status"].ToString();

                Image1.ImageUrl = "../upload/property/" + ds.Tables[0].Rows[0]["p_image"].ToString();
                HiddenField1.Value = ds.Tables[0].Rows[0]["p_image"].ToString();

                TextBox1.Text = ds.Tables[0].Rows[0]["p_name"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["p_details"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["p_location"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["p_baseprice"].ToString();

                TextBox4.Text = ds.Tables[0].Rows[0]["p_enddate"].ToString();



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
            string date = DateTime.Now.ToString("yyyy-MM-dd");

            string get_id = Request.QueryString["id"];
            
            cmd = a.insert("property_upd");

            string str_img = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());

            if (str_img.Length > 0)
            {
                str_img = System.DateTime.Now.Millisecond + str_img;
                string str_path = "../upload/property/" + str_img;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(str_path).ToString());
                ig = str_img;
            }
            else
            {
                ig = HiddenField1.Value;
            }

            cmd.Parameters.AddWithValue("@p_id", get_id);
            cmd.Parameters.AddWithValue("@p_startdate", date);
            cmd.Parameters.AddWithValue("@p_image", ig.ToString());
            cmd.Parameters.AddWithValue("@p_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p_details", TextBox6.Text);
            cmd.Parameters.AddWithValue("@p_location", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p_baseprice", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p_enddate", TextBox4.Text);
            cmd.Parameters.AddWithValue("@c_id", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@cat_id", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@p_status", DropDownList3.SelectedValue);


            cmd.ExecuteNonQuery();


            Response.Redirect("Myproperty.aspx");





        }
        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }
    }



   
}