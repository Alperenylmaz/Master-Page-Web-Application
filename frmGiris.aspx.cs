using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection vtbaglanti = new OleDbConnection();
        vtbaglanti.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data\\panel.mdb");

        if (vtbaglanti.State == ConnectionState.Closed)
        {
            vtbaglanti.Open();
        }

        OleDbCommand sorgu = new OleDbCommand();
        sorgu.Connection = vtbaglanti;

        sorgu.CommandText = "Select * from admin where kullaniciadi=@kullaniciadi and sifre1=@sifre1";
        sorgu.Parameters.AddWithValue("@kullaniciadi", TextBox2.Text);
        sorgu.Parameters.AddWithValue("@sifre1", TextBox3.Text);
        OleDbDataReader kayitoku;
        kayitoku = sorgu.ExecuteReader();

        if (kayitoku.Read())
        {
            Session["ad"] = kayitoku["ad"].ToString();
            if (kayitoku["cinsiyet"].ToString() == "Bay")
            {Session["cinsiyet"] = "Mr"; }
            else
            { Session["cinsiyet"] = "Mrs"; }
                
            
            Response.Redirect("frmSikayet.aspx");
        }
        else
            Response.Write("<script>alert('Kullanıcı Adı veya Şifre Hatalı')</script>");
    }
}