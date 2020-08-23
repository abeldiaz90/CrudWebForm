using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD
{
    public partial class Modificar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conexion = new SqlConnection();
                conexion.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["Conexion"];
                conexion.Open();
                SqlCommand comando = new SqlCommand();
                comando.CommandText = "BusquedaEmpleadoId";
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@Id", this.txtIdEmpleado.Text);
                comando.Connection = conexion;
                comando.ExecuteNonQuery();
                SqlDataAdapter ResultadosQuery = new SqlDataAdapter(comando);
                DataTable TablaDeDatos = new DataTable();
                ResultadosQuery.Fill(TablaDeDatos);
                conexion.Close();
                this.txtPrimerNombre.Text = TablaDeDatos.Rows[0]["Nombre"].ToString();
                this.txtSegundoNombre.Text = TablaDeDatos.Rows[0]["SegundoNombre"].ToString();
                this.txtApellidoPaterno.Text = TablaDeDatos.Rows[0]["ApellidoPaterno"].ToString();
                this.txtApellidoMaterno.Text = TablaDeDatos.Rows[0]["ApellidoMaterno"].ToString();
                this.Calendario.SelectedDate = DateTime.Parse(TablaDeDatos.Rows[0]["FecNac"].ToString());
                this.txtSueldo.Text = TablaDeDatos.Rows[0]["Sueldo"].ToString();
                this.chkActivo.Checked = Boolean.Parse(TablaDeDatos.Rows[0]["Activo"].ToString());
            }
            catch (Exception ex) { ex.ToString(); }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            SqlConnection conexion = new SqlConnection();
            conexion.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["Conexion"];
            conexion.Open();
            SqlCommand comando = new SqlCommand();
            comando.CommandText = "ModificarEmpleado";
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@Id", this.txtIdEmpleado.Text);
            comando.Parameters.AddWithValue("@Nombre", this.txtPrimerNombre.Text);
            comando.Parameters.AddWithValue("@SegundoNombre", this.txtSegundoNombre.Text);
            comando.Parameters.AddWithValue("@ApellidoPaterno", this.txtApellidoPaterno.Text);
            comando.Parameters.AddWithValue("@ApellidoMaterno", this.txtApellidoMaterno.Text);
            comando.Parameters.AddWithValue("@FecNac", this.Calendario.SelectedDate);
            comando.Parameters.AddWithValue("@Sueldo", Decimal.Parse(this.txtSueldo.Text));
            comando.Parameters.AddWithValue("@Activo", this.chkActivo.Checked);
            comando.Connection = conexion;
            comando.ExecuteNonQuery();
            conexion.Close();
            Response.Redirect("~/ConsultaGeneral.aspx");
        }
    }
}