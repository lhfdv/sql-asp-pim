using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PIM_FT
{
    public partial class PessoaDOA : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            disp_data();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Pessoa(Nome, CPF) values('" + Nome.Text + "', '" + CPF.Text + "'); insert into Endereco(Logradouro, Numero, CEP, Bairro, Cidade, Estado) values ('" + Logradouro.Text + "', '" + NumeroR.Text + "', '" + CEP.Text + "', '" + Bairro.Text + "', '" + Cidade.Text + "', '" + Estado.Text + "'); insert into Telefone(Numero, DDD) values ('" + NumeroT.Text + "', '" + DDD.Text + "'); insert into Telefone_Tipo(Tipo) values ( '" + Tipo.Text + "' )";
            cmd.ExecuteNonQuery();

            Nome.Text = "";
            CPF.Text = "";
            NumeroR.Text = "";
            CEP.Text = "";
            Bairro.Text = "";
            Cidade.Text = "";
            Estado.Text = "";
            NumeroT.Text = "";
            DDD.Text = "";
            Tipo.Text = "";


            disp_data();
        }

        public void disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Pessoa";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            cmd.CommandText = "select * from Endereco";
            cmd.ExecuteNonQuery();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();

            cmd.CommandText = "select * from Telefone";
            cmd.ExecuteNonQuery();
            da.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from Pessoa where Nome='"+ Nome.Text +"'";
            cmd.ExecuteNonQuery();

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from Endereco where Logradouro='" + Logradouro.Text + "'";
            cmd.ExecuteNonQuery();

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from Telefone where Numero='" + NumeroT.Text + "'";
            cmd.ExecuteNonQuery();

            Nome.Text = "";
            CPF.Text = "";
            NumeroR.Text = "";
            CEP.Text = "";
            Bairro.Text = "";
            Cidade.Text = "";
            Estado.Text = "";
            NumeroT.Text = "";
            DDD.Text = "";
            Tipo.Text = "";

            disp_data();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update Pessoa set Nome='" + Nome.Text + "', CPF='" + CPF.Text + "', Endereco='"+ Logradouro.Text +"' where id=" + Convert.ToInt32(oldid.Text) + "";
            cmd.ExecuteNonQuery();

            Nome.Text = "";
            CPF.Text = "";
            NumeroR.Text = "";
            CEP.Text = "";
            Bairro.Text = "";
            Cidade.Text = "";
            Estado.Text = "";
            NumeroT.Text = "";
            DDD.Text = "";
            Tipo.Text = "";

            disp_data();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            disp_data();
        }
    }
}