using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    Admin a = new Admin();
    SqlCommand cmd;
    DataSet ds, ds2, ds1, ds3, ds4, ds5, ds6;

    protected void Page_Load(object sender, EventArgs e)
    {
        a.connection();

        ds = a.select("result_sel_contact");
        string b = "";
        string s = "";
        string p = "";
        string b_con = "";
        string s_con="";
        string price = "";
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {

            b = ds.Tables[0].Rows[i]["buyer"].ToString();
            s = ds.Tables[0].Rows[i]["seller"].ToString();
            p = ds.Tables[0].Rows[i]["p_name"].ToString();
             b_con = ds.Tables[0].Rows[i]["b_con"].ToString();
             s_con = ds.Tables[0].Rows[i]["s_con"].ToString();
             price = ds.Tables[0].Rows[i]["a_maxprice"].ToString();
            
             
             WebClient client = new WebClient();
             string str = client.DownloadString("http://smsc.biz/httpapi/send?username=homesjhone@gmail.com&password=huneelchu&sender_id=PROMOTIONAL&route=P&phonenumber=" + b_con + "&message= Dear " + b + ",\r\n" + "You Won The Auction And Property Name Is " + p + "\r\n" + " And The Price Is Rs." + price + "\r\n" + "Thank You");
             string str1 = client.DownloadString("http://smsc.biz/httpapi/send?username=homesjhone@gmail.com&password=huneelchu&sender_id=PROMOTIONAL&route=P&phonenumber=" + s_con + "&message= Dear " + s + ",\r\n" + "Your Property Have Been Sold And Name Is " + p + "\r\n" + " And The Price Is Rs." + price + "\r\n" + "Thank You");
        }
        //Label1.Text = b;
        //Label2.Text = s;
       
    }
}
