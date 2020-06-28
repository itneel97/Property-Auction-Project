using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;

public partial class Client_Client : System.Web.UI.MasterPage
{
    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds,ds2,ds1,ds3,ds4,ds5;

    protected void Page_Load(object sender, EventArgs e)
    {

        a.connection();

        if (!IsPostBack)
        {
            try
            {
                //data grid view show
                ds = a.select("contact_sel");



                //load data into textbox

                Label1.Text = ds.Tables[0].Rows[0]["address"].ToString();
                Label2.Text = ds.Tables[0].Rows[0]["contact_no"].ToString();
                Label3.Text = ds.Tables[0].Rows[0]["email"].ToString();
                Label4.Text = ds.Tables[0].Rows[0]["website"].ToString();

                /* //check state
                 string state = Request.QueryString["state"];
                 string get_id = Request.QueryString["id"];
                 */
                ds2 = a.select("about_sel");

                Label5.Text = ds2.Tables[0].Rows[0]["message"].ToString();


                ds1 = a.select("property_sel_act");
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    string today = DateTime.Now.ToString("yyyy-MM-dd");

                    for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
                    {
                        if (DateTime.Parse(today) >= DateTime.Parse(ds1.Tables[0].Rows[i]["p_enddate"].ToString()))
                        {
                           
                            string s = ds1.Tables[0].Rows[i]["p_id"].ToString();


                            cmd = a.insert("master_client_auction_dact");
                            cmd.Parameters.AddWithValue("@p_id",s);
                            cmd.ExecuteNonQuery();


                            cmd = a.insert("master_client_property_dact");
                            cmd.Parameters.AddWithValue("@p_id",s);
                            cmd.ExecuteNonQuery();


                            ds4 = a.select_id("auction_sel_p_id",s);


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

                            ds5 = a.select("result_sel_contact");
                            string b = "";
                            string se = "";
                            string p = "";
                            string b_con = "";
                            string s_con = "";
                            string price = "";
                            for (int j = 0; j < ds5.Tables[0].Rows.Count; j++)
                            {

                                b = ds5.Tables[0].Rows[j]["buyer"].ToString();
                                se = ds5.Tables[0].Rows[j]["seller"].ToString();
                                p = ds5.Tables[0].Rows[j]["p_name"].ToString();
                                b_con = ds5.Tables[0].Rows[j]["b_con"].ToString();
                                s_con = ds5.Tables[0].Rows[j]["s_con"].ToString();
                                price = ds5.Tables[0].Rows[j]["a_maxprice"].ToString();


                                WebClient client = new WebClient();
                                string str = client.DownloadString("http://smsc.biz/httpapi/send?username=homesjhone@gmail.com&password=huneelchu&sender_id=PROMOTIONAL&route=P&phonenumber=" + b_con + "&message= Dear " + b + ",\r\n" + "You Won The Auction And Property Name Is " + p + "\r\n" + " And The Price Is Rs." + price + "\r\n" + "Thank You");
                                string str1 = client.DownloadString("http://smsc.biz/httpapi/send?username=homesjhone@gmail.com&password=huneelchu&sender_id=PROMOTIONAL&route=P&phonenumber=" + s_con + "&message= Dear " + se + ",\r\n" + "Your Property Have Been Sold And Property Name Is " + p + "\r\n" + " And Its Price Is Rs." + price + "\r\n" + "Thank You");
                            }

                        }
                    }
                }




            }


            catch (Exception ex)
            {
               Label4.Text = ex.Message.ToString();
            }

        }
    }
}
