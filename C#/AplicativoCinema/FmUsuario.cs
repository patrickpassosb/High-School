using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AplicativoCinema
{
    public partial class FmUsuario : Form
    {
        // variável Global
        string strConn;

        public FmUsuario()
        {
            InitializeComponent();
        }

        private void FmUsuario_Load(object sender, EventArgs e)
        {
            strConn = ConfigurationManager.AppSettings["StringConnection"];
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void btGravar_Click(object sender, EventArgs e)
        {
            // criar a ROTA de conexão ou seja o STRING CONECTION
            //string strCon = @"Data Source=C208-PC01\SQLEXPRESS;Initial Catalog=SolucaoCinema;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";      
            //string strCon = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=TESTESCINEMA;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection con = new SqlConnection(strConn);
            try
            {
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;

                if (txbID.Text == "")
                {
                    cmd.CommandText = "INSERT INTO USUARIO ( Usuario, Senha  ) VALUES ( @Usuario , @Senha )";
                    cmd.Parameters.AddWithValue("@Usuario", txbUsuario.Text);
                    cmd.Parameters.AddWithValue("@Senha", txbSenha.Text);
                }
                else
                {
                    cmd.CommandText = "UPDATE USUARIO SET Senha = @Senha where idUsuario = @idUsuario";
                    cmd.Parameters.AddWithValue("@Senha", txbSenha.Text);
                    cmd.Parameters.AddWithValue("@idUsuario", txbID.Text);
                }
                cmd.ExecuteNonQuery();
                MessageBox.Show("Operação concluída com sucesso !");
            }
            catch (Exception erro)
            {
                MessageBox.Show("Problemas com a Inclusão do Filme." + erro);  
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
            txbID.Clear();
            txbUsuario.Clear();
            txbSenha.Clear();
        }
    }
}
