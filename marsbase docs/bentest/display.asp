<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>
<!--#include file="connect.inc" -->
<style>
.nav {font-family:verdana; font-size:10; color:gray}
body {font-family:verdana,sans-serif; font-size:10; color:black}
.blurb {font-family:verdana,sans-serif; font-size:10; line-height: 350%; color:black; vertical-align:middle}
.select  {font-family:verdana; font-size:10; font-weight:bold; color:black; background:#ffdf05}
.contents {font-family:verdana,sans-serif; font-size:10; color:black; line-height:1.5}
</style>
<body>

<%
dim cat
cat = request("cat")
dim subcat
subcat = request("subcat")
If subcat = "" then

 'src = "d:\inetpub\wwwroot\bentest\databases\mb.mdb"
 sConnStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & src
 Set objConn = Server.CreateObject("ADODB.Connection")
 objConn.Open sConnStr
 sql = "select * from subcats where cat = '" & cat & "'"
 sqlblurb = "select * from blurbs where cat = '" & cat & "'"
 set rsBlurb = objConn.Execute(sqlblurb)
 set rsNav = objConn.Execute(sql) 
 
'Count number of pics in the images table
'Generate random number
'select that image
'scale to fifty percent and display
 
sqlpics = "SELECT Count(filename) AS howmany FROM images where subcat = '" & subcat & "' AND thumbs = yes"
set rsCount = objConn.Execute(sqlpics)
i = rsCount("howmany")
Randomize
dim intIDNumber
intIDNumber = Int((i * Rnd) + 1) 
'response.write intIDNumber
sqlimage = "select * from images where ID = " & intIDNumber & ""
set rsImage = objConn.Execute(sqlimage)

%>
<a href="default.asp" class="nav">home</a> > <a href="display.asp?cat=<%=cat%>" class="select"><%=cat%></a>
<p>
<%
While (not rsNav.EOF)
%>
<a href="display.asp?cat=<%=cat%>&subcat=<%=rsNav("subcat")%>" class="nav"><%=rsNav("subcat")%></a> >
<%
rsNav.movenext
wend
%>
<hr align="left">
<table cellpadding=10 align="center" width=60%>
<tr>
       <td class="blurb" width=40% valign="top"><%=rsBlurb("blurb")%></td>
       <td><img src="images/thumbs/<%=rsImage("filename")%>"></td>
</tr>
<tr>
       <td colspan="2"><hr></td>
      
</tr>
</table>


<%
else
subcat = request("subcat")
dim link
link = request("link")
if link = "" then
 src = "d:\inetpub\wwwroot\bentest\databases\mb.mdb"
 sConnStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & src
 Set objConn = Server.CreateObject("ADODB.Connection")
 objConn.Open sConnStr
 sql = "select * from subcats where subcat = '" & subcat & "'"
 sqllinks = "select * from subcats where subcat = '" & subcat & "'"
 set rsLinks = objConn.Execute(sqllinks)
 set rsNav = objConn.Execute(sql)
 sqlcontent = "select * from contents where subcat = '" & subcat & "'"
 'response.end
 set rsContent = objConn.Execute(sqlcontent)
%>
<a href="default.asp" class="nav">home</a> > <a href="display.asp?cat=<%=cat %>" class="nav"><%=cat%></a> > <a href="display.asp?cat=<%=cat%>&subcat=<%=rsNav("subcat")%>" class="select"><%=rsNav("subcat")%></a> <p>
<%
While (not rsNav.EOF)
x=1
do while x<4
%>

<a href="display.asp?cat=<%=cat%>&subcat=<%=subcat%>&link=<%=rsLinks("link"& x & "")%>" class="nav"><%=rsLinks("link"& x & "")%></a> 

<%
if rsLinks("link"& x & "")<> "" then 
response.write ">" 
end if

x=x+1
loop
rsNav.movenext
wend
%>
<hr align="left">
<table align="center" width=60%>

<%
While (NOT rsContent.EOF)
%>
<tr>
       <td class="contents">
	   <a href="images/<%=rsContent("subcat")%>/<%=rsContent("imagename")%>"><div align="right"id="layer1" style="position:relative; top:110px; z-index:1"><img src="images/magnify.gif" valign="middle" align="right" border="0"></div><img align="right" src="images\thumbs\<%=rsContent("thumbname")%>" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rsContent("description")%>
	   </td>
</tr>
<tr>
<td>
<hr>
</td>
</tr>
<%
rsContent.movenext
wend
%>

</table>





<%
else


src = "d:\inetpub\wwwroot\bentest\databases\mb.mdb"
 sConnStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & src
 Set objConn = Server.CreateObject("ADODB.Connection")
 objConn.Open sConnStr
 sql = "select * from subcats where subcat = '" & subcat & "'"
 sqllinks = "select * from subcats where subcat = '" & subcat & "'"
 set rsLinks = objConn.Execute(sqllinks)
 set rsNav = objConn.Execute(sql)
%>
<a href="default.asp" class="nav">home</a> > <a href="display.asp?cat=<%=cat %>" class="nav"><%=cat%></a> > <a href="display.asp?cat=<%=cat%>&subcat=<%=rsNav("subcat")%>" class="nav"><%=rsNav("subcat")%></a> > <a href="display.asp?cat=<%=cat%>&subcat=<%=subcat%>&link=<%=link%>" class="select"><%=link%></a> <p>
<%
While (not rsNav.EOF)
x=1
do while x<4
if rsLinks("link"& x & "")<> link then
   if rsLinks("link"& x & "")<>"" then
%>

<a href="display.asp?cat=<%=cat%>&subcat=<%=subcat%>&link=<%=rsLinks("link"& x & "")%>" class="nav"><%=rsLinks("link"& x & "")%></a>

<%
  else 
  response.write ""
  end if
else
response.write ""
end if


x=x+1
loop
rsNav.movenext
wend

response.write "<hr>"
%>

gallery or plans go here
<%


end if
end if 
%>

</body>
</html>
