<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altas.aspx.cs" Inherits="CRUD.altas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<style type="text/css">
		.auto-style1 {
			height: 23px;
		}
		.auto-style2 {
			width: 244px;
		}
		.auto-style3 {
			height: 23px;
			width: 244px;
		}
		.auto-style4 {
			width: 359px;
		}
		.auto-style5 {
			height: 23px;
			width: 359px;
		}
		.auto-style6 {
			height: 27px;
			width: 244px;
		}
		.auto-style7 {
			height: 27px;
			width: 359px;
		}
		.auto-style8 {
			height: 27px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<table style="width:100%;">
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
        </div>
    </form>
</body>
</html>
