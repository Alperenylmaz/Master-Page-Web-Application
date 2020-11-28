using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class frmKayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection vtbaglanti = new OleDbConnection();
        vtbaglanti.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("~/App_Data\\panel.mdb");

        if (vtbaglanti.State == ConnectionState.Closed)
        {
            vtbaglanti.Open();
        }

        OleDbCommand sorgu = new OleDbCommand();
        sorgu.Connection = vtbaglanti;
        sorgu.CommandText = "Select * from il order by IL_Adi";

        OleDbDataReader kayitoku;
        kayitoku = sorgu.ExecuteReader();

        while (kayitoku.Read())
        {
            DropDownList3.Items.Add(kayitoku["IL_Adi"].ToString());
        }

        vtbaglanti.Close();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        OleDbConnection vtbaglanti = new OleDbConnection();
        vtbaglanti.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("~/App_Data\\panel.mdb");

        vtbaglanti.Open();

        string ara = "SELECT count(kullaniciadi) FROM admin Where kullaniciadi = '" + txtKullaniciadi.Text + "'";
        OleDbCommand sa = new OleDbCommand(ara, vtbaglanti);
        int c = Convert.ToInt32(sa.ExecuteScalar());

        if (c != 0)
        {
            Response.Write("<script>alert('Kullanıcı adı geçersiz')</script>");
        }
          

       else if (txtAd.Text == "" || txtSoyad.Text == "" || txtEposta.Text == "" || txtSifre1.Text == "" || txtSifre2.Text == "" || dpDay.SelectedValue == "" || dpMonth.SelectedValue == "" || dpYear.SelectedValue == "" || txtCeptelefonu.Text == "" || DropDownList3.SelectedIndex==0 ||(rdBay.Checked==false && rdBayan.Checked==false))
            Response.Write("<script>alert('Lütfen Bilgilerinizi Eksiksiz Doldurunuz...')</script>");


        else if (txtSifre1.Text != txtSifre2.Text)
        {
            Response.Write("<script>alert('Girdiğiniz Şifreler Eşleşmiyor')</script>");
        }

        else if (CheckBox1.Checked == false)
        {
            Response.Write("<script>alert('Canon Hizmet Şartlarını ve Gizlilik Politikasını Kabul Ediyorum Seçeneğini İşaretleyiniz')</script>");
        }

        else
        {

            if (vtbaglanti.State == ConnectionState.Closed)
            {
                vtbaglanti.Open();
            }
            OleDbCommand kaydet = new OleDbCommand("insert into admin(ad,soyad,eposta,kullaniciadi,sifre1,sifre2,dogumgun,dogumay,dogumyıl,cinsiyet,ceptelefonu,konum) values(@ad,@soyad,@eposta,@kullaniciadi,@sifre1,@sifre2,@dogumgun,@dogumay,@dogumyıl,@cinsiyet,@ceptelefonu,@konum)", vtbaglanti);
            kaydet.Parameters.AddWithValue("@ad", txtAd.Text);
            kaydet.Parameters.AddWithValue("@soyad", txtSoyad.Text);
            kaydet.Parameters.AddWithValue("@eposta", txtEposta.Text);
            kaydet.Parameters.AddWithValue("@kullaniciadi", txtKullaniciadi.Text);
            kaydet.Parameters.AddWithValue("@sifre1", txtSifre1.Text);
            kaydet.Parameters.AddWithValue("@sifre2", txtSifre2.Text);


            kaydet.Parameters.AddWithValue("@dogumgun", dpDay.SelectedValue);
            kaydet.Parameters.AddWithValue("@dogumay", dpMonth.SelectedValue);
            kaydet.Parameters.AddWithValue("@dogumyıl", dpYear.SelectedValue);


            if (rdBay.Checked)
            {
                kaydet.Parameters.AddWithValue("@cinsiyet", "Bay");
                Session["cinsiyet"] = "Mr";
            }


            else
            {
                kaydet.Parameters.AddWithValue("@cinsiyet", "Bayan");
                Session["cinsiyet"] = "Mrs";
            }


            
            kaydet.Parameters.AddWithValue("@ceptelefonu", txtCeptelefonu.Text);
            kaydet.Parameters.AddWithValue("@konum", DropDownList3.SelectedValue);

            kaydet.ExecuteNonQuery();

            vtbaglanti.Close();
            Response.Redirect("frmBilgi.aspx");
        }
    }

    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        OleDbConnection vtbaglanti = new OleDbConnection();
        vtbaglanti.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("~/App_Data\\panel.mdb");
        vtbaglanti.Open();
        
        string ara = "SELECT count(kullaniciadi) FROM admin Where kullaniciadi = '" + txtKullaniciadi.Text + "'";
        OleDbCommand sa = new OleDbCommand(ara, vtbaglanti);
        int c = Convert.ToInt32(sa.ExecuteScalar());
        if (c == 0)
        {
            Label3.Text = "Username is suitable.✓";
        }
        else
            Label3.Text = "Username is not suitable.✗";
    }

    protected void cmdUpdate1_Click(object sender, EventArgs e)
    {
        OleDbConnection vtbaglanti = new OleDbConnection();
        vtbaglanti.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("~/App_Data\\panel.mdb");
        vtbaglanti.Open();

        string ara = "SELECT count(eposta) FROM admin Where eposta = '" + txtEposta.Text + "'";
        OleDbCommand sa = new OleDbCommand(ara, vtbaglanti);
        int c = Convert.ToInt32(sa.ExecuteScalar());
        
        if (c == 0)
        {
            Label1.Text = "Email is suitable.✓";
        }

        else
            Label1.Text = "Email is not suitable.✗";
    }

}