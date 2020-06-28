using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Seller_Addproperty : System.Web.UI.Page
{
    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds,ds1;
    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();
        TextBox4.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");

        if (!IsPostBack)
        {
            ds = a.select("city_sel");

            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "c_name";
            DropDownList1.DataValueField = "c_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");




            ds1 = a.select("category_sel");

            DropDownList2.DataSource = ds1;
            DropDownList2.DataTextField = "cat_name";
            DropDownList2.DataValueField = "cat_id";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--Select--");



            DropDownList3.Items.Insert(0, "--Select--");
            DropDownList3.Items.Insert(1, "Active");
            DropDownList3.Items.Insert(2, "Deactive");
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = a.insert("property_add");

            string u = Session["uid"].ToString();
            string str_img = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());

            str_img = System.DateTime.Now.Millisecond + str_img;
            string str_path = "";
            str_path = "../upload/property/" + str_img;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(str_path).ToString());

            string date = System.DateTime.Now.ToShortDateString();
            string date1 = DateTime.Now.ToString("yyyy-MM-dd");

            cmd.Parameters.AddWithValue("@c_id", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@cat_id", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@p_status", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@p_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p_details", TextBox6.Text);
            cmd.Parameters.AddWithValue("@p_location", TextBox2.Text);
            cmd.Parameters.AddWithValue("@p_baseprice", TextBox3.Text);
            cmd.Parameters.AddWithValue("@p_enddate", TextBox4.Text);
            cmd.Parameters.AddWithValue("@created_date", date);
            cmd.Parameters.AddWithValue("@p_startdate", date1);
            cmd.Parameters.AddWithValue("@p_image", str_img.ToString());
            cmd.Parameters.AddWithValue("@u_id", u);

            cmd.ExecuteNonQuery();
            Response.Redirect("Myproperty.aspx");
        }
        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }
    }
}