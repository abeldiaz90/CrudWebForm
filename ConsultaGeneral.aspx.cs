using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Common;

namespace CRUD
{
    public partial class ConsultaGeneral : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarDatos();
        }

        public void LlenarDatos()
        {
            SqlConnection conexion = new SqlConnection();
            conexion.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["Conexion"];
            conexion.Open();
            SqlCommand comando = new SqlCommand();
            //comando.CommandText = "select * from empleados";
            //comando.CommandType = System.Data.CommandType.Text;
            comando.CommandText = "ConsultaEmpleados";
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Connection = conexion;
            comando.ExecuteNonQuery();
            conexion.Close();
            SqlDataAdapter ObtenerResultado = new SqlDataAdapter(comando);
            DataTable Resultados = new DataTable();
            ObtenerResultado.Fill(Resultados);
            this.grdEmpleados.DataSource = Resultados;
            this.grdEmpleados.DataBind();
           
        }
    }
}