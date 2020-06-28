using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client_Client : System.Web.UI.MasterPage
{
    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds,ds2,ds1,ds3,ds4;

    protected void Page_Load(object sender, EventArgs e)
    {

        a.connection();

        try
        {

            if (Session["uemail"].ToString() != null || Session["uid"].ToString() != null || Session["type"].ToString()=="Buyer")
            {

                if (!IsPostBack)
                {
                    try
                    {
                        //data grid view show
                        ds = a.select("contact_sel");
                        /*
                        contact.DataSource = ds;
                        contact.DataBind();
                        */
                        //dynemically data fatch karava... textbox ma data page load time aj aavi jase...

                        Label1.Text = ds.Tables[0].Rows[0]["name"].ToString();
                        Label2.Text = ds.Tables[0].Rows[0]["contact_no"].ToString();
                        Label3.Text = ds.Tables[0].Rows[0]["email"].ToString();
                        Label4.Text = ds.Tables[0].Rows[0]["website"].ToString();


                        // Aboout  ni biji procedure use kari
                        ds2 = a.select("about_sel");
                        /*
                        contact.DataSource = ds;
                        contact.DataBind();
                        */
                        //dynemically data fatch karava... textbox ma data page load time aj aavi jase...

                        Label5.Text = ds2.Tables[0].Rows[0]["message"].ToString();

                        ds1 = a.select("property_sel_act");

                        if (ds1.Tables[0].Rows.Count > 0)
                        {
                            string today = DateTime.Now.ToString("yyyy-MM-dd");


                            for (int i = 0; i <= ds1.Tables[0].Rows.Count; i++)
                            {
                                if (DateTime.Parse(today) >= DateTime.Parse(ds1.Tables[0].Rows[i]["p_enddate"].ToString()))
                                {
                                    string s = ds1.Tables[0].Rows[i]["p_id"].ToString();


                                    cmd = a.insert("master_client_auction_dact");
                                    cmd.Parameters.AddWithValue("@p_id", s);
                                    cmd.ExecuteNonQuery();


                                    cmd = a.insert("master_client_property_dact");
                                    cmd.Parameters.AddWithValue("@p_id", s);
                                    cmd.ExecuteNonQuery();


                                    ds4 = a.select_id("auction_sel_p_id", s);


                                    //ds4 = a.select_id("auction_max",s);

                                    //string max = ds4.Tables[0].Rows[0]["m"].ToString();

                                    if (ds4.Tables[0].Rows.Count > 0)
                                    {

                                        //ds3 = a.select_id("auction_sel_p_id",s);

                                        string a_id = ds4.Tables[0].Rows[0]["a_id"].ToString();
                                        string max = ds4.Tables[0].Rows[0]["a_price"].ToString();

                                        string u_s_id = ds4.Tables[0].Rows[0]["u_s_id"].ToString();
                                        string u_b_id = ds4.Tables[0].Rows[0]["u_b_id"].ToString();
                                        string p_b_price = ds4.Tables[0].Rows[0]["p_baseprice"].ToString();
                                        string date = DateTime.Now.ToString("yyyy-MM-dd");


                                        cmd = a.insert("result_add");

                                        cmd.Parameters.AddWithValue("@a_id", a_id);
                                        cmd.Parameters.AddWithValue("@p_id", s);
                                        cmd.Parameters.AddWithValue("@u_b_id", u_b_id);
                                        cmd.Parameters.AddWithValue("@u_s_id", u_s_id);
                                        cmd.Parameters.AddWithValue("@p_baseprice", p_b_price);
                                        cmd.Parameters.AddWithValue("@a_maxprice", max);

                                        cmd.Parameters.AddWithValue("@r_createddate", date);
                                        cmd.Parameters.AddWithValue("@r_status", "Active");
                                        cmd.ExecuteNonQuery();



                                    }

                                }

                            }
                        }

                    }


                    catch (Exception ex)
                    {
                        //   TextBox2.Text = "First Catch_Block:-" + ex.Message.ToString();
                    }

                }
            }
            else
            {
                Response.Redirect("../Client/Signin.aspx");
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("../Client/Signin.aspx");
        }
    }


}
