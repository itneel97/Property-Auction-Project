using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client_Property : System.Web.UI.Page
{
    Admin a = new Admin();
    DataSet ds,ds1;


    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();

        if (!IsPostBack)
        {

            try
            {

                ds = a.select("category_sel_act");

                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "cat_name";
                DropDownList1.DataValueField = "cat_id";
                DropDownList1.DataBind();
               



                ds1 = a.select("property_sel_act");
                property.DataSource = ds1;
                property.DataBind();

            }
            catch (Exception ex)
            {

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string str = "select * from property_tb u,category_tb ca,city_tb ci where u.p_status='Active' and u.cat_id=ca.cat_id and u.c_id=ci.c_id and u.cat_id='"+DropDownList1.SelectedValue+"' and u.p_name like '%"+TextBox1.Text+"%'";

            ds = a.search(str);
            if (ds.Tables[0].Rows.Count > 0)
            {

                property.DataSource = ds;
                property.DataBind();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Property Data Not Available..!')", true);
            }
        }
        catch (Exception ex)
        {
           // TextBox1.Text = ex.Message.ToString();
        }
    }
}