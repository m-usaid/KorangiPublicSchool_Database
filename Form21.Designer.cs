﻿
namespace Korangi_Public_School
{
    partial class Form21
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textBox6 = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(39, 192);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(620, 197);
            this.dataGridView1.TabIndex = 0;
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(165, 141);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(224, 22);
            this.textBox3.TabIndex = 59;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(36, 141);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(38, 17);
            this.label3.TabIndex = 58;
            this.label3.Text = "Year";
            // 
            // textBox6
            // 
            this.textBox6.Location = new System.Drawing.Point(165, 97);
            this.textBox6.Name = "textBox6";
            this.textBox6.Size = new System.Drawing.Size(224, 22);
            this.textBox6.TabIndex = 57;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.White;
            this.label6.Location = new System.Drawing.Point(36, 97);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(52, 17);
            this.label6.TabIndex = 56;
            this.label6.Text = "Grade:";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(471, 139);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 60;
            this.button1.Text = "Search";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // Form21
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(694, 448);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textBox6);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.dataGridView1);
            this.Name = "Form21";
            this.Text = "View Grade Information";
            this.Load += new System.EventHandler(this.Form21_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBox6;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button button1;
    }
}