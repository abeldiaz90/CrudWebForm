<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Operaciones.aspx.cs" Inherits="CRUD.Operaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
	<table style="width: 100%;">
		<tr>
			<td class="auto-style2">
				<asp:Label ID="Label1" runat="server" Text="Numero de Empleado:"></asp:Label>
			</td>
			<td class="auto-style3">
				<asp:TextBox ID="txtIdEmpleado" runat="server"></asp:TextBox>
			</td>
			<td class="auto-style3">&nbsp;</td>
		</tr>
		<tr>
			<td class="auto-style1">
				<asp:Label ID="lblPrimerNombre" runat="server" Text="Primer Nombre:"></asp:Label>
			</td>
			<td>
				<asp:TextBox ID="txtPrimerNombre" runat="server"></asp:TextBox>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td class="auto-style1">
				<asp:Label ID="lblSegundoNombre" runat="server" Text="Segundo Nombre:"></asp:Label>
			</td>
			<td>
				<asp:TextBox ID="txtSegundoNombre" runat="server"></asp:TextBox>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<asp:Label ID="lblApellidoPaterno" runat="server" Text="Apellido Paterno:"></asp:Label>
			</td>
			<td>
				<asp:TextBox ID="txtApellidoPaterno" runat="server"></asp:TextBox>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<asp:Label ID="lblApellidoMaterno" runat="server" Text="Apellido Materno:"></asp:Label>
			</td>
			<td>
				<asp:TextBox ID="txtApellidoMaterno" runat="server"></asp:TextBox>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<asp:Label ID="lblFecNac" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
			</td>
			<td>
				<asp:Calendar ID="Calendario" runat="server"></asp:Calendar>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<asp:Label ID="lblSueldo" runat="server" Text="Sueldo:"></asp:Label>
			</td>
			<td>
				<asp:TextBox ID="txtSueldo" runat="server"></asp:TextBox>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<asp:Label ID="lblActivo" runat="server" Text="Activo:"></asp:Label>
			</td>
			<td>
				<asp:CheckBox ID="chkActivo" runat="server" />
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<asp:Button ID="btnBuscar" Text="Buscar" runat="server" OnClick="btnBuscar_Click" />
			</td>
			<td>
				<asp:Button ID="btnModificar" Text="Modificar" runat="server" OnClick="btnModificar_Click" />
			</td>
			<td>&nbsp;</td>
		</tr>
	</table>
</asp:Content>
