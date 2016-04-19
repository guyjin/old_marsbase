<%@ Page language="c#" Codebehind="WebForm1.aspx.cs" AutoEventWireup="false" Inherits="mb.WebForm1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta content="True" name="vs_showGrid">
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		oo, text goes here.
		<form id="Form1" method="post" runat="server">
			&nbsp;
			<asp:DataGrid id=DataGrid1 style="Z-INDEX: 101; LEFT: 91px; POSITION: absolute; TOP: 111px" runat="server" DataSource="<%# DS_MOCS %>" DataMember="tblMOCS" Width="468px">
			</asp:DataGrid></form>
	</body>
</HTML>
