<%@ Page Language="VB" %>
<%@ Register TagPrefix="wmx" Namespace="Microsoft.Matrix.Framework.Web.UI" Assembly="Microsoft.Matrix.Framework, Version=0.6.0.0, Culture=neutral, PublicKeyToken=6f763c9966660626" %>
<script runat="server">

    ' Insert page code here
    '


        Function MyQueryMethod() As System.Data.DataSet
            Dim connectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0; Ole DB Services=-4; Data Source=C:\mb.mdb"
            Dim dbConnection As System.Data.IDbConnection = New System.Data.OleDb.OleDbConnection(connectionString)

            Dim queryString As String = "SELECT [mecha].[designation] FROM [mecha] WHERE (([mecha].[name] = ""Kodiak"") AND "& _
    "([mecha].[designation] <> ""null""))"
            Dim dbCommand As System.Data.IDbCommand = New System.Data.OleDb.OleDbCommand
            dbCommand.CommandText = queryString
            dbCommand.Connection = dbConnection

            Dim dataAdapter As System.Data.IDbDataAdapter = New System.Data.OleDb.OleDbDataAdapter
            dataAdapter.SelectCommand = dbCommand
            Dim dataSet As System.Data.DataSet = New System.Data.DataSet
            dataAdapter.Fill(dataSet)

            Return dataSet
        End Function

    Sub DataGrid1_SelectedIndexChanged(sender As Object, e As EventArgs)
        DataGrid1.DataSource = MyQueryMethod()
        DataGrid1.DataBind()
    End Sub

</script>
<html>
<head>
    <style>BODY {
	LINE-HEIGHT: 1.2em
}
#MxDataGrid2 {
	MARGIN: 0px 40px 100px 0px
}
#navbutton {
	CLEAR: right; BORDER-RIGHT: #999 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #999 1px solid; DISPLAY: block; PADDING-LEFT: 3px; FONT-WEIGHT: bold; FLOAT: right; PADDING-BOTTOM: 3px; BORDER-LEFT: #999 1px solid; WIDTH: 100px; COLOR: navy; PADDING-TOP: 3px; BORDER-BOTTOM: #999 1px solid; FONT-FAMILY: Arial, Verdana, Sans-serif; TEXT-DECORATION: none
}
#content {
	WIDTH: 50%; FONT-FAMILY: Arial, Verdana, sans-serif
}
</style>
</head>
<body>
    <form runat="server">
        <p>
            &nbsp;<wmx:MxDataGrid id="MxDataGrid1" runat="server" DataSourceControlID="AccessDataSourceControl1" BorderColor="#CCCCCC" DataMember="mecha" BackColor="White" CellPadding="3" DataKeyField="ID" BorderWidth="1px" BorderStyle="None" ShowHeader="False" AutoGenerateFields="False" GridLines="None">
                <SelectedItemStyle font-bold="True" forecolor="White" backcolor="#669999"></SelectedItemStyle>
                <ItemStyle forecolor="#000066"></ItemStyle>
                <FooterStyle forecolor="#000066" backcolor="White"></FooterStyle>
                <HeaderStyle font-bold="True" forecolor="White" backcolor="#006699"></HeaderStyle>
                <PagerStyle horizontalalign="Center" forecolor="#000066" backcolor="White" mode="NumericPages"></PagerStyle>
                <Fields>
                    <wmx:BoundField DataField="designation">
                        <ItemStyle font-size="16pt" font-names="Arial,Verdana,Sans-serif" font-bold="True" forecolor="Black"></ItemStyle>
                    </wmx:BoundField>
                </Fields>
            </wmx:MxDataGrid>
            <wmx:AccessDataSourceControl id="AccessDataSourceControl1" runat="server" SelectCommand='SELECT * FROM [mecha] WHERE name = "Kodiak" AND designation <> "null"' ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0; Ole DB Services=-4; Data Source=C:\mb.mdb"></wmx:AccessDataSourceControl>
        </p>
        <p>
            <a id="navbutton" href="copperhead.aspx">Kodiak</a>
            <wmx:AccessDataSourceControl id="AccessDataSourceControl2" runat="server" SelectCommand="SELECT * FROM [mecha]" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0; Ole DB Services=-4; Data Source=C:\mb.mdb"></wmx:AccessDataSourceControl>
            <wmx:MxDataGrid id="MxDataGrid2" runat="server" DataSourceControlID="AccessDataSourceControl2" BorderColor="#CCCCCC" DataMember="mecha" BackColor="White" CellPadding="10" DataKeyField="ID" BorderWidth="1px" BorderStyle="None" ShowHeader="False" AutoGenerateFields="False" GridLines="Horizontal" CellSpacing="5">
                <SelectedItemStyle font-bold="True" forecolor="White" backcolor="#669999"></SelectedItemStyle>
                <EditItemStyle backcolor="White"></EditItemStyle>
                <ItemStyle forecolor="#000066"></ItemStyle>
                <FooterStyle forecolor="#000066" backcolor="White"></FooterStyle>
                <HeaderStyle font-bold="True" forecolor="White" backcolor="#006699"></HeaderStyle>
                <PagerStyle horizontalalign="Center" forecolor="#000066" backcolor="White" mode="NumericPages"></PagerStyle>
                <Fields>
                    <wmx:BoundField DataField="content">
                        <ItemStyle font-size="10pt" font-names="Arial,Verdana,Sans-serif" height="12px" width="60%"></ItemStyle>
                    </wmx:BoundField>
                    <wmx:BoundField DataField="picture">
                        <ItemStyle horizontalalign="Center" verticalalign="Middle"></ItemStyle>
                    </wmx:BoundField>
                </Fields>
            </wmx:MxDataGrid>
            <asp:DataGrid id="DataGrid1" runat="server" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged"></asp:DataGrid>
        </p>
        <!-- Insert content here -->
    </form>
</body>
</html>
