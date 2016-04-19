</tr>
</table>
<script>
if (NS4) {document.write('<LAYER NAME="floatlayer" LEFT="'+floatX+'" TOP="'+floatY+'">');}
if ((IE4) || (NS6)) {document.write('<div id="floatlayer" style="position:absolute; left:'+floatX+'; top:'+floatY+';">');}
</script>
<img src="images/smalllabel.gif">
<script>
if (NS4) 
{
document.write('</LAYER>');
}
if ((IE4) || (NS6)) 
{
document.write('</DIV>');
}
ifloatX=floatX;
ifloatY=floatY;
define();
window.onresize=define;
lastX=-1;
lastY=-1;
adjust();
</script>

</body>

</html>

