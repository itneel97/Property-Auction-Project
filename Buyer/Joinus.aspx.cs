using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client_Joinus : System.Web.UI.Page
{
    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds,ds1;
    string ig = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();

       
        try
        {
           

            if (!IsPostBack)
            {
                ds1 = a.select("city_sel");
                DropDownList2.DataSource = ds1;
                DropDownList2.DataTextField = "c_name";
                DropDownList2.DataValueField = "c_id";
                DropDownList2.DataBind();

                ds = a.select_id("seller_joinus_sel", Session["uemail"].ToString());


                Image1.ImageUrl = "../upload/buyer/" + ds.Tables[0].Rows[0]["u_image"].ToString();
                Image2.ImageUrl = "../upload/buyer/" + ds.Tables[0].Rows[0]["u_image"].ToString();

                HiddenField1.Value = ds.Tables[0].Rows[0]["u_image"].ToString();
                HiddenField2.Value = ds.Tables[0].Rows[0]["u_image"].ToString();

                Label3.Text = ds.Tables[0].Rows[0]["u_name"].ToString();
                Label2.Text = ds.Tables[0].Rows[0]["u_type"].ToString();
                TextBox1.Text = ds.Tables[0].Rows[0]["u_name"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["u_address"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["u_contact"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["u_email"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["u_password"].ToString();
                RadioButtonList1.SelectedValue = ds.Tables[0].Rows[0]["gender"].ToString();
                
                DropDownList2.SelectedValue = ds.Tables[0].Rows[0]["c_id"].ToString();


               
            }


        }

        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {


            cmd = a.insert("seller_joinus_upd");


            string str_img = System.IO.Path.GetFileName(FileUpload2.PostedFile.FileName.ToString());

            if (str_img.Length > 0)
            {
                str_img = System.DateTime.Now.Millisecond + str_img;
                string str_path = "../upload/buyer/" + str_img;
                FileUpload2.PostedFile.SaveAs(Server.MapPath(str_path).ToString());
                ig = str_img;
            }
            else
            {
                ig = HiddenField1.Value;
            }


            cmd.Parameters.AddWithValue("@u_email", Session["uemail"].ToString());
            cmd.Parameters.AddWithValue("@u_image", ig.ToString());
            cmd.Parameters.AddWithValue("@u_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@u_address", TextBox2.Text);
            cmd.Parameters.AddWithValue("@u_contact", TextBox3.Text);
            cmd.Parameters.AddWithValue("@u_password", TextBox5.Text);
            cmd.Parameters.AddWithValue("@c_id", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);


            cmd.ExecuteNonQuery();

            
            Response.Redirect("../Buyer/Joinus.aspx");



         
           
        }
        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }
         
    }
          
}