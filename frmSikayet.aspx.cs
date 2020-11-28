using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class frmSikayet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            if (Session["ad"] == null)
        {
            Session.Abandon();
            Response.Redirect("frmGiris.aspx");
        }
            else
        {
            Label1.Text = (Session["cinsiyet"].ToString() +" "+ Session["ad"].ToString() + ", You can specify your complaints and suggestions in the field below.");

        }
    }
            protected void Button1_Click(object sender, EventArgs e)
    {

            OleDbConnection vtbaglanti = new OleDbConnection();
            vtbaglanti.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data\\panel.mdb");
                 
            if (vtbaglanti.State == ConnectionState.Closed)
            {
                vtbaglanti.Open();
            }

            OleDbCommand kaydet = new OleDbCommand("insert into kullanici(ceptelefon,mesaj) values(@ceptelefon,@mesaj)", vtbaglanti);
            kaydet.Parameters.AddWithValue("@cepetelefon",TextBox2.Text);
            kaydet.Parameters.AddWithValue("@mesasj",TextBox3.Text);
            
            kaydet.ExecuteNonQuery();
            vtbaglanti.Close();
            Response.AppendHeader("Refresh", "2;url=frmSon.aspx");
           

    }
}
    
