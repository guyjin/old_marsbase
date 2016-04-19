<!--#include file="addin1.inc" --> <%
dim choice
choice = request("subject")
dim x
dim i
Set objConn = Server.CreateObject ("ADODB.Connection")
marsdb = "DSN=mb"
objConn.Open marsdb
sql="SELECT model,picname from gallery where model = '" & choice &  "'"
set rsCont = objConn.Execute(sql)
%> 
<h1><%=choice%></h1>
<p> <a href="display.asp?subject=&lt;%=choice%&gt;" class="nav"><%=choice%></a><br> <!-- a href="" class="nav">Plans</a --></p> 
<td valign="top" align="left" width="100%"> 
<div align="left"> 
<table border="0" width="20%" cellspacing="3" cellpadding="3" align="center"> 
<tr>
<%
		  i=0
		  While (NOT rsCont.EOF)
%>
<td width="100%" valign="top" align="center"> <a href="images/&lt;%=choice%&gt;/&lt;%=rsCont(" picname")%>.jpg"><img src="images/&lt;%=choice%&gt;/&lt;%=rsCont(" picname")%>small.jpg" align="right" border="0"></a> 
</td>
<%
		i=i+1
		if i=3 then
		response.write"</tr><tr>"
		i=0
		end if
		rsCont.MoveNext
		Wend
%>
</tr>
</table> <!--#include file="addin2.inc" --> 