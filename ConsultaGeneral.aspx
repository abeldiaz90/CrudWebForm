<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaGeneral.aspx.cs" Inherits="CRUD.ConsultaGeneral" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consulta de Empleados</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:GridView ID="grdEmpleados" runat="server" AutoGenerateColumns="False" Width="100%">
				<Columns>
					<asp:BoundField DataField="Nombre" HeaderText="Primer Nombre" />
					<asp:BoundField DataField="SegundoNombre" HeaderText="Segundo Nombre" />
					<asp:BoundField DataField="ApellidoPaterno" HeaderText="Apellido Paterno" />
					<asp:BoundField DataField="ApellidoMaterno" HeaderText="Apellido Materno" />
					<asp:BoundField DataField="FecNac" HeaderText="Fecha de Nacimiento" />
					<asp:BoundField DataField="Sueldo" DataFormatString="{0:c2}" HeaderText="Sueldo" />
					<asp:CheckBoxField DataField="Activo" HeaderText="Activo" />
				</Columns>
			</asp:GridView>
        </div>
    </form>
</body>
</html>
