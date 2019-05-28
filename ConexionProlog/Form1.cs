using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SbsSW.SwiPlCs;


namespace ConexionProlog
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Environment.SetEnvironmentVariable("SWI_HOME_DIR", @"C:\\Program Files (x86)\\swipl");
            Environment.SetEnvironmentVariable("Path", @"C:\\Program Files (x86)\\swipl\\bin");
            string[] p = { "-q", "-f", @"BaseConocimiento.pl" };

            if (!PlEngine.IsInitialized)
            {
                try
                {                    
                    PlEngine.Initialize(p);
                    _ = MessageBox.Show("Conexion exitosa");

                    //PlQuery consultaCostoPorTipo = new PlQuery("objeto(O)");
                    //foreach (PlQueryVariables v in consultaCostoPorTipo.SolutionVariables)
                    //{
                    //    Console.WriteLine("Objecto: " + v["O"].ToString());
                    //}

                    //PlEngine.PlCleanup();
                }
                catch
                {
                    _ = MessageBox.Show("Conexion fallida");
                }
            }
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            PlQuery consulta;
            PlQuery cargar = new PlQuery("cargar('BaseConocimiento.bd')");
            cargar.NextSolution();
            string consultita = txtConsulta.Text;
            //consulta = new PlQuery("tamano(O,grande).");
            consulta = new PlQuery(consultita);
            // usar R como salida por el momento.
            txtSalida.Text.Remove(0, txtSalida.TextLength);
            foreach (PlQueryVariables v in consulta.SolutionVariables)
            {                
                //Console.WriteLine("R: " + v["R"].ToString());
                txtSalida.AppendText("\nR: " + v["R"].ToString());
            }

            PlEngine.PlCleanup();
        }
    }
}
