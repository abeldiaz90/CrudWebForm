<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Consultas.aspx.cs" Inherits="CRUD.Consultas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
</asp:Content>
