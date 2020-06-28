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
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();

        if (!IsPostBack)
        {
            ds = a.select("city_sel");

            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "c_name";
            DropDownList2.DataValueField = "c_id";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--Select--");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {



            if (CheckBox1.Checked == true)
            {


                ds = a.select_id("user_check",TextBox4.Text);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Label1.Visible = true;
                    Label1.Text = "<script>alert('Sorry This E-Mail Already Exist..!');</script>";
                }
                else
                {
                    cmd = a.insert("user_add");
                    string str_img = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());

                    str_img = System.DateTime.Now.Millisecond + str_img;
                    string str_path = "";
                    if (DropDownList1.SelectedValue == "Buyer")
                    {
                        str_path = "../upload/buyer/" + str_img;
                    }
                    else if (DropDownList1.SelectedValue == "Seller")
                    {
                        str_path = "../upload/seller/" + str_img;
                    }
                    FileUpload1.PostedFile.SaveAs(Server.MapPath(str_path).ToString());



                    string date = System.DateTime.Now.ToShortDateString() + " " + System.DateTime.Now.ToShortTimeString();


                    cmd.Parameters.AddWithValue("@u_type", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@u_name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@u_address", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@u_contact", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@u_email", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@c_id", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("@u_password", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@c_date", date);
                    cmd.Parameters.AddWithValue("@u_status", "Active");
                    cmd.Parameters.AddWithValue("@u_image", str_img.ToString());

                    cmd.ExecuteNonQuery();


                    if (DropDownList1.SelectedValue == "Buyer")
                    {
                        ds = a.select("user_last");
                        string last_id = ds.Tables[0].Rows[0]["K"].ToString();
                       
                        Session["uemail"] = TextBox4.Text;
                        Session["type"] = DropDownList1.SelectedValue.ToString();
                        Session["uid"] = last_id;
                        //Label1.Text = last_id.ToString();
                        Response.Redirect("../Buyer/Joinus.aspx");
                    }
                    else if (DropDownList1.SelectedValue == "Seller")
                    {
                        ds = a.select("user_last");
                        string last_id = ds.Tables[0].Rows[0]["K"].ToString();

                        Session["uemail"] = TextBox4.Text;
                        Session["type"] = DropDownList1.SelectedValue.ToString();
                        Session["uid"] = last_id;
                        //Label1.Text = last_id.ToString();
                        Response.Redirect("../Seller/Joinus.aspx");
                    }
                    
                }

            }
            else

            {
                Label1.Visible = true;
                Label1.Text = "<script>alert('Please Accept Terms and Conditions..!!');</script>";
            }
        }
        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }
         
    }
          
}