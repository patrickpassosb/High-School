namespace AplicativoCinema
{
    partial class FmCinema
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.cinemasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.dgUsuario = new System.Windows.Forms.DataGridView();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgUsuario)).BeginInit();
            this.SuspendLayout();
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "AMC Theatres",
            "Cinemark",
            "Regal Cinemas",
            "Cineworld",
            "Odeon Cinemas",
            "Vue Cinemas",
            "Pathé Cinemas",
            "Kinoplex",
            "UCI Cinemas",
            "Cinesystem",
            "Cinépolis",
            "Hoyts Cinemas",
            "Landmark Theatres",
            "Alamo Drafthouse",
            "Grauman\'s Chinese Theatre",
            "TCL Chinese Theatre",
            "Cineplex Entertainment",
            "Empire Cinemas",
            "Showcase Cinemas",
            "Megaplex Theatres"});
            this.comboBox1.Location = new System.Drawing.Point(12, 325);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(121, 21);
            this.comboBox1.TabIndex = 0;
            this.comboBox1.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cinemasToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(526, 24);
            this.menuStrip1.TabIndex = 12;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // cinemasToolStripMenuItem
            // 
            this.cinemasToolStripMenuItem.Name = "cinemasToolStripMenuItem";
            this.cinemasToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.cinemasToolStripMenuItem.Text = "Cinemas";
            this.cinemasToolStripMenuItem.Click += new System.EventHandler(this.cinemasToolStripMenuItem_Click);
            // 
            // dgUsuario
            // 
            this.dgUsuario.AllowUserToAddRows = false;
            this.dgUsuario.AllowUserToDeleteRows = false;
            this.dgUsuario.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgUsuario.Location = new System.Drawing.Point(12, 27);
            this.dgUsuario.Name = "dgUsuario";
            this.dgUsuario.ReadOnly = true;
            this.dgUsuario.Size = new System.Drawing.Size(502, 282);
            this.dgUsuario.TabIndex = 13;
            // 
            // FmCinema
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(526, 450);
            this.Controls.Add(this.dgUsuario);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.comboBox1);
            this.Name = "FmCinema";
            this.Text = "FmCinema";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgUsuario)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem cinemasToolStripMenuItem;
        private System.Windows.Forms.DataGridView dgUsuario;
    }
}