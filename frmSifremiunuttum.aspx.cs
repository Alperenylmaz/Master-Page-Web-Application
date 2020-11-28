using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class frmSifremiunuttum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection vtbaglanti = new OleDbConnection();
        vtbaglanti.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("~/App_Data\\panel.mdb");

        if (vtbaglanti.State == ConnectionState.Closed)
        {
            vtbaglanti.Open();
        }

        OleDbCommand sorgu = new OleDbCommand();
        sorgu.Connection = vtbaglanti;

        sorgu.CommandText = "Select * from admin where eposta=@eposta and ceptelefonu=@ceptelefonu";
        sorgu.Parameters.AddWithValue("@eposta",TextBox2.Text);
        sorgu.Parameters.AddWithValue("@ceptelefonu",TextBox3.Text);
        OleDbDataReader kayitoku;
        kayitoku = sorgu.ExecuteReader();

        if (kayitoku.Read())
        {
            Label1.Text = kayitoku["sifre1"].ToString();
        }

        else
        {
            Response.Write("<script>alert('Bu Eposta Üzerine Kayıt Bulunamamıştır')</script>");
        }
        vtbaglanti.Close();
    }
    
    }
