<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="AltaEmpleados.aspx.cs" Inherits="CRUD.AltaEmpleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
				<table style="width: 100%;">
					<tr>
						<td class="auto-style2">
							<asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
						</td>
						<td class="auto-style4">
							<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="auto-style2">
							<asp:Label ID="Label2" runat="server" Text="Segundo Nombre:"></asp:Label>
						</td>
						<td class="auto-style4">
							<asp:TextBox ID="txtSegundoNombre" runat="server"></asp:TextBox>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="auto-style2">
							<asp:Label ID="Label3" runat="server" Text="Apellido Paterno:"></asp:Label>
						</td>
						<td class="auto-style4">
							<asp:TextBox ID="txtApellidoPaterno" runat="server"></asp:TextBox>
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td class="auto-style3">
							<asp:Label ID="Label4" runat="server" Text="Apellido Materno:"></asp:Label>
						</td>
						<td class="auto-style5">
							<asp:TextBox ID="txtApellidoMaterno" runat="server"></asp:TextBox>
						</td>
						<td class="auto-style1"></td>
					</tr>
					<tr>
						<td class="auto-style6">
							<asp:Label ID="Label5" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
						</td>
						<td class="auto-style7">
							<asp:Calendar ID="Calendario" runat="server"></asp:Calendar>
						</td>
						<td class="auto-style8"></td>
					</tr>
					<tr>
						<td class="auto-style3">
							<asp:Label ID="Label6" runat="server" Text="Sueldo:"></asp:Label>
						</td>
						<td class="auto-style5">
							<asp:TextBox ID="txtsueldo" runat="server"></asp:TextBox>
						</td>
						<td class="auto-style1"></td>
					</tr>
					<tr>
						<td class="auto-style3">
							<asp:Label ID="Label7" runat="server" Text="Activo:"></asp:Label>
						</td>
						<td class="auto-style5">
							<asp:CheckBox ID="chkActivo" runat="server" />
						</td>
						<td class="auto-style1"></td>
					</tr>
					<tr>
						<td class="auto-style3">&nbsp;</td>
						<td class="auto-style5">
							<asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" />
						</td>
						<td class="auto-style1">&nbsp;</td>
					</tr>
				</table>
</asp:Content>
