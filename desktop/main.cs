using Microsoft.Web.WebView2.Core;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace run_video
{
    public partial class Form1 : Form
    {
        public Process process;
        public Form1()
        {
            this.FormBorderStyle = FormBorderStyle.None;
            this.WindowState = FormWindowState.Maximized;

            string exeFile = $"file:///{Environment.CurrentDirectory}/path/file.exe";
            process = Process.Start(exeFile);

            InitializeComponent();
            InitializeWebView();
        }

        private void InitializeWebView()
        {
            string url = $"file:///{Environment.CurrentDirectory}/path/file.exe";
            webView21.Source = new Uri(url);
        }
    }
}
