using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProjem
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetPersonelList();
            }

        }
        SqlConnection connection = new SqlConnection("Data Source=DESKTOP-HDPTS21;Initial Catalog=AspProje;Integrated Security=True");

        protected void Button1_Click(object sender, EventArgs e)
        {
            int personelID = int.Parse(TextBox1.Text);
            string personelad = TextBox2.Text;
            string personelsoyad = TextBox3.Text;
            string cinsiyet = RadioButtonList1.SelectedValue;
            string sehir = DropDownList1.SelectedValue;
            string telefon = TextBox5.Text;
            string mail = TextBox6.Text;

            connection.Open();
            SqlCommand command = new SqlCommand
           ("Insert into PersonelKayıtTab values ('" + personelID + "','" + personelad + "','" + personelsoyad + "','"
           + cinsiyet + "','" + sehir + "','" + telefon + "','" + mail + "')", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Başarıyla Kaydedildi');", true);
            GetPersonelList();
        }
        void GetPersonelList()
        {
            SqlCommand command = new SqlCommand("Select * from PersonelKayıtTab", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int personelID = int.Parse(TextBox1.Text);
            string personelad = TextBox2.Text;
            string personelsoyad = TextBox3.Text;
            string cinsiyet = RadioButtonList1.SelectedValue;
            string sehir = DropDownList1.SelectedValue;
            string telefon = TextBox5.Text;
            string mail = TextBox6.Text;

            connection.Open();
            SqlCommand command = new SqlCommand
            ("Update PersonelKayıtTab set PersonelAd='" + personelad + "',PersonelSoyad='" + personelsoyad + "',Cinsiyet='" + 
            cinsiyet + "',Sehir='" + sehir + "',Telefon='" + telefon + "',Mail='" + mail + "' where PersonelID='" + 
            personelID + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Başarıyla Güncellendi');", true);
            GetPersonelList();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int personelID = int.Parse(TextBox1.Text);

            connection.Open();
            SqlCommand command = new SqlCommand("Delete PersonelKayıtTab where PersonelID='" + personelID + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Başarıyla Silindi');", true);
            GetPersonelList();

        }
    }
}