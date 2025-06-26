using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AplicativoCinema
{
    public partial class FmPrincipal : Form
    {
        public FmPrincipal()
        {
            InitializeComponent();
        }

        private void FmPrincipal_Load(object sender, EventArgs e)
        {

        }

        private void usuariosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FmUsuario fmusuario = new FmUsuario();
            fmusuario.Show();
        }
    }
}
