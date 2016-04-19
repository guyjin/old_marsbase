<!--#include file="addin1.inc" -->
     
      
<%
dim choice
choice = request("subject")
Set objConn = Server.CreateObject ("ADODB.Connection")
marsdb = "DSN=mb"
objConn.Open marsdb
sql="SELECT mb_content.model, mb_content.picname, mb_content.narrate from mb_content where mb_content.model = '" & choice &  "'"
headersql="select header from headers where model = '" & choice & "'"
set rsHeader = objConn.Execute(headersql)
set rsCont = objConn.Execute(sql)
%>


<h1><%=choice%></h1>
<p> <a href="gallery.asp?subject=<%=choice%>" class="nav"> <%=choice%> Gallery</a><br>
        <!-- a href="" class="nav">Plans</a --></p>
      <td valign="top" align="left" width="100%">
      <div align="left">
<table border="0" width="75%"  cellspacing="3" cellpadding="3" align="left">
<tr>
<td><%=rsHeader("header")%>
</td>
</tr>
<tr>
<td>
<hr>
</td>
</tr>
          <%
		  While (NOT rsCont.EOF)
		  
		  %>
		  
		 <tr>
		 <td width="100%" valign="top" align="left"><a href="images/<%=choice%>/<%=rsCont("picname")%>.jpg"><img src="images/<%=choice%>/<%=rsCont("picname")%>small.jpg" align="right" border="0"></a><%=rsCont("narrate")%>
		 </td>
		 </tr>
		 <tr> 
            <td width="100%" valign="top" align="left"> 
              <hr>
            </td>
          </tr> 
            
		  <%
		  rsCont.MoveNext
		  wend
		  %>
		  </table>
		
<!--#include file="addin2.inc" -->
