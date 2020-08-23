using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD
{
    public partial class altas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
         
            };
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conexion = new SqlConnection();
                conexion.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["Conexion"];
                conexion.Open();
                SqlCommand comando = new SqlCommand();
                comando.Connection = conexion;
                //comando.CommandText = "insert into Empleados(Nombre,SegundoNombre,ApellidoPaterno,ApellidoMaterno,FecNac,Sueldo,Activo)values('" + this.txtNombre.Text + "','" + this.txtSegundoNombre.Text + "','" + this.txtApellidoPaterno.Text + "','" + this.txtApellidoMaterno.Text + "','" + this.Calendario.SelectedDate + "'," + decimal.Parse(this.txtsueldo.Text) + ",'" + this.chkActivo.Checked + "')";
                //comando.CommandType = System.Data.CommandType.Text;
                comando.CommandText = "dbo.AltaEmpleados";
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@Nombre", this.txtNombre.Text);
                comando.Parameters.AddWithValue("@SegundoNombre", this.txtSegundoNombre.Text);
                comando.Parameters.AddWithValue("@ApellidoPaterno", this.txtApellidoPaterno.Text);
                comando.Parameters.AddWithValue("@ApellidoMaterno", this.txtApellidoMaterno.Text);
                comando.Parameters.AddWithValue("@FecNac", this.Calendario.SelectedDate);
                comando.Parameters.AddWithValue("@Sueldo", Decimal.Parse(this.txtsueldo.Text));
                comando.Parameters.AddWithValue("@Activo", this.chkActivo.Checked);
                comando.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception ex) { ex.ToString();}
        }
    }
}