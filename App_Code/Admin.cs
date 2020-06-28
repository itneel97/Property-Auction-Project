using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Text;
using System.Security.Cryptography;

/// <summary>
/// Summary description for Admin
/// </summary>
public class Admin
{

    SqlConnection con;
    SqlCommand cmd;
    DataSet ds;
    SqlDataAdapter adp;

	public Admin()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void connection()
    {
        con = new SqlConnection(@"Data Source=.\SQLExpress;Initial Catalog=auction_db;Integrated Security=True");
        con.Open();

    }
    //insert update ane delete karva mate aa method use karvi

    public SqlCommand insert(string str)
    {
        cmd = new SqlCommand(str, con);
        cmd.CommandType = CommandType.StoredProcedure;
        return cmd;

    }
    
    //badha data select karva mate...badhu print karvu hoy atle aa use karvuu...
    public DataSet select(String str)
    {
        cmd = new SqlCommand(str, con);
        cmd.CommandType = CommandType.StoredProcedure;
       
        ds = new DataSet();
        adp = new SqlDataAdapter();
        adp.SelectCommand = cmd;

        adp.Fill(ds);

        return ds;
    }

    //koi ek data select karva mate...
    public DataSet select_id(String str,String id)
    {
        cmd = new SqlCommand(str, con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", id);
        
        ds = new DataSet();
        adp = new SqlDataAdapter();
        
        adp.SelectCommand = cmd;

        adp.Fill(ds);

        return ds;
    }


    //login

    //koi ek data select karva mate...
    public DataSet select_login(String str, String username,String password)
    {
        cmd = new SqlCommand(str, con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@username",username);
        cmd.Parameters.AddWithValue("@password", password);

        ds = new DataSet();
        adp = new SqlDataAdapter();

        adp.SelectCommand = cmd;

        adp.Fill(ds);

        return ds;
    }

    //user ne login karva mate client side coding
    public DataSet select_login_user(String str, String username, String password,String type)
    {
        cmd = new SqlCommand(str, con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@password", password);
        cmd.Parameters.AddWithValue("@type", type);

        ds = new DataSet();
        adp = new SqlDataAdapter();

        adp.SelectCommand = cmd;

        adp.Fill(ds);

        return ds;
    }


    //encoding method
    public String Base64Encode(String plainText)
    {
        var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
        return System.Convert.ToBase64String(plainTextBytes);
    
    }

    //decodeing method
    public String Base64Decode(String base64EncodeData)
    {

        var base64EncodedBytes = System.Convert.FromBase64String(base64EncodeData);
        return System.Text.Encoding.UTF8.GetString(base64EncodedBytes);

    }
    // search karva mate 
    public DataSet search(String str)
    {
        cmd = new SqlCommand(str, con);


        ds = new DataSet();
        adp = new SqlDataAdapter();
        adp.SelectCommand = cmd;

        adp.Fill(ds);

        return ds;
    }
}