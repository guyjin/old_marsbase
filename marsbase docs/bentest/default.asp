<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>
<!--#include file="connect.inc" -->
<style>
a.nav {font-family:verdana; font-size:10; color:gray}

</style>
<body>

<%
 sConnStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & src
 Set objConn = Server.CreateObject("ADODB.Connection")
 objConn.Open sConnStr
 sqlCats = "Select * from categories"
 set rsCats = objConn.Execute(sqlCats)
%>
<a href="default.asp" class="nav">home</a> 
<%
While (Not rsCats.EOF)
%>
| <a href="display.asp?cat=<%=rsCats("cat")%>" class="nav"><%=rsCats("cat")%></a>&nbsp;
<%
rsCats.movenext
wend
%>




</body>
</html>
