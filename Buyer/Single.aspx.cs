using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Seller_Single : System.Web.UI.Page
{
    Admin a = new Admin();
    SqlCommand cmd,cmd1;
    DataSet ds,ds1,ds2,ds3,ds4;
   

    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();

        try
        {

        string get_id = Request.QueryString["id"];
        ds = a.select_id("property_sel_id", get_id);
       

        ds2 = a.select_login("auction_sel_check",Session["uid"].ToString(),get_id);
        
        //
        //Label1.Text = ds3.Tables[0].Rows[0]["M"].ToString();

      

            if (!IsPostBack)
            {
                if (ds2.Tables[0].Rows.Count > 0)
                {

                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('You have Already Bid On This Property');window.location='Property.aspx'", true);

                }
                // property details
                else
                {
                    Image1.ImageUrl = "../upload/property/" + ds.Tables[0].Rows[0]["p_image"].ToString();

                    Label1.Text = ds.Tables[0].Rows[0]["p_name"].ToString();
                    Label2.Text = ds.Tables[0].Rows[0]["cat_name"].ToString();
                    Label3.Text = ds.Tables[0].Rows[0]["c_name"].ToString();
                    Label4.Text = ds.Tables[0].Rows[0]["p_id"].ToString();
                    Label5.Text = ds.Tables[0].Rows[0]["p_details"].ToString();
                    Label6.Text = ds.Tables[0].Rows[0]["p_baseprice"].ToString();
                    
                  
                  //  Label6.Text = sum.ToString();
                    
                    Label7.Text = ds.Tables[0].Rows[0]["p_location"].ToString();
                    Label8.Text = ds.Tables[0].Rows[0]["p_status"].ToString();
                    Label9.Text = ds.Tables[0].Rows[0]["p_startdate"].ToString();
                    Label10.Text = ds.Tables[0].Rows[0]["p_enddate"].ToString();

                    Label12.Text = ds.Tables[0].Rows[0]["u_id"].ToString();

                    // resent auction

                    ds1 = a.select_id("auction_sel", get_id);

                    if (ds1.Tables[0].Rows.Count > 0)
                    {
                        Panel1.Visible = true;
                        single.DataSource = ds1;
                        single.DataBind();
                    }
                    else
                    {
                        Panel1.Visible = false;
                        Label11.Visible = true;
                        Label11.Text = "There Is No Bidding On This Property..!!";
                    }


                }
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message.ToString();
        }
    }
   
   
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            string get_id = Request.QueryString["id"];
            string date = DateTime.Now.ToString("yyyy-MM-dd");

            ds3 = a.select_id("auction_max", get_id);

            string max = ds3.Tables[0].Rows[0]["m"].ToString();
            if (max == "")
            {
                max = "0";
            }


           
            // max sodhva mate aarite M karvo
            //Label1.Text = ds3.Tables[0].Rows[0]["M"].ToString();
            int max1 = Int32.Parse(max.ToString());
           

            //limmit 
            int lim = Int32.Parse(TextBox2.Text);
            
            //bidding  
            int bi = Int32.Parse(TextBox1.Text);
            //basePrice
            int ba = Int32.Parse(Label6.Text);

            if (bi >= ba)
            {
                if (bi <= lim)
                {
                    if (bi >= max1)
                    {
               
                        ds1 = a.select_id("auction_sel",get_id);

                        
                        for (int i=0;i<ds1.Tables[0].Rows.Count;i++)
                        {

                            string aid = ds1.Tables[0].Rows[i]["a_id"].ToString();
                            
                            string pid = ds1.Tables[0].Rows[i]["p_id"].ToString();
                           
                            string aprice = ds1.Tables[0].Rows[i]["a_price"].ToString();

                            string limitprice = ds1.Tables[0].Rows[i]["a_limitprice"].ToString();
                            
                           // string aprice1 =ds1.Tables[0].Rows[i]["a_price"].ToString();
                            
                            
                            int sum = Int32.Parse(aprice) + 1000;
                    
                        
                            if(Int32.Parse(aprice.ToString()) < Int32.Parse(limitprice.ToString()))
		                     {

                                 if (sum < Int32.Parse(limitprice.ToString()))
                                 {

                                     cmd1 = a.insert("auction_upd");

                                     cmd1.Parameters.AddWithValue("@a_price", Int32.Parse(aprice));
                                     cmd1.Parameters.AddWithValue("@a_id", aid);
                                     cmd1.ExecuteNonQuery();


                                 }
                                
                                
		                        }

                        }

                        cmd = a.insert("auction_add");

                        cmd.Parameters.AddWithValue("@a_price", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@u_b_id", Session["uid"].ToString());
                        cmd.Parameters.AddWithValue("@a_limitprice", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@p_baseprice", Label6.Text);
                        cmd.Parameters.AddWithValue("@u_s_id", Label12.Text);
                        cmd.Parameters.AddWithValue("@p_id", Label4.Text);
                        cmd.Parameters.AddWithValue("@created_date", date);
                        cmd.Parameters.AddWithValue("@a_status", "Active");

                        cmd.ExecuteNonQuery();


                        Response.Redirect("Myauction.aspx");
                          
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You Are Entering Lower Value Then Previous Bid Which Is  '+"+max+")", true);
                    }
                }
                else 
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your Are Entering Lower Value in Limit Price')", true);
                }

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bid Price Must Be High Then BasePrice')", true);
            }



        }

        catch (Exception ex)
        {
            TextBox1.Text = ex.Message.ToString();
        }

    }
}