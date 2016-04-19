<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>&gt;&gt;&gt;&gt;m a r s b a s e&lt;&lt;&lt;&lt;</title>
<link rel="stylesheet" type="text/css" href="marsbasestyle.css">
<SCRIPT LANGUAGE="JavaScript">
<!--
floatX=10;
floatY=10;
layerwidth=125;
layerheight=60;
align="right";
valign="bottom";
delayspeed=0;

// This script is copyright (c) Henrik Petersen, NetKontoret
// Feel free to use this script on your own pages as long as you do not change it.
// It is illegal to distribute the script as part of a tutorial / script archive.
// Updated version available at: http://www.echoecho.com/toolfloatinglayer.htm
// This comment and the 4 lines above may not be removed from the code.

NS6=false;
IE4=(document.all);
if (!IE4) {NS6=(document.getElementById);}
NS4=(document.layers);

function adjust() {
if ((NS4) || (NS6)) {
if (lastX==-1 || delayspeed==0)
{
lastX=window.pageXOffset + floatX;
lastY=window.pageYOffset + floatY;
}
else
{
dx=Math.abs(window.pageXOffset+floatX-lastX);
dy=Math.abs(window.pageYOffset+floatY-lastY);
d=Math.sqrt(dx*dx+dy*dy);
c=Math.round(d/10);
if (window.pageXOffset+floatX>lastX) {lastX=lastX+delayspeed+c;}
if (window.pageXOffset+floatX<lastX) {lastX=lastX-delayspeed-c;}
if (window.pageYOffset+floatY>lastY) {lastY=lastY+delayspeed+c;}
if (window.pageYOffset+floatY<lastY) {lastY=lastY-delayspeed-c;}
}
if (NS4){
document.layers['floatlayer'].pageX = lastX;
document.layers['floatlayer'].pageY = lastY;
}
if (NS6){
document.getElementById('floatlayer').style.left=lastX;
document.getElementById('floatlayer').style.top=lastY;
}
}
else if (IE4){
if (lastX==-1 || delayspeed==0)
{
lastX=document.body.scrollLeft + floatX;
lastY=document.body.scrollTop + floatY;
}
else
{
dx=Math.abs(document.body.scrollLeft+floatX-lastX);
dy=Math.abs(document.body.scrollTop+floatY-lastY);
d=Math.sqrt(dx*dx+dy*dy);
c=Math.round(d/10);
if (document.body.scrollLeft+floatX>lastX) {lastX=lastX+delayspeed+c;}
if (document.body.scrollLeft+floatX<lastX) {lastX=lastX-delayspeed-c;}
if (document.body.scrollTop+floatY>lastY) {lastY=lastY+delayspeed+c;}
if (document.body.scrollTop+floatY<lastY) {lastY=lastY-delayspeed-c;}
}
document.all['floatlayer'].style.posLeft = lastX;
document.all['floatlayer'].style.posTop = lastY;
} 
setTimeout('adjust()',50);
}

function define()
{
if ((NS4) || (NS6)) 
{ 
if (align=="left") {floatX=ifloatX};
if (align=="right") {floatX=window.innerWidth-ifloatX-layerwidth-20};
if (align=="center") {floatX=Math.round((window.innerWidth-20)/2)-Math.round(layerwidth/2)};
if (valign=="top") {floatY=ifloatY};
if (valign=="bottom") {floatY=window.innerHeight-ifloatY-layerheight};
if (valign=="center") {floatY=Math.round((window.innerHeight-20)/2)-Math.round(layerheight/2)};
}
if (IE4) 
{
if (align=="left") {floatX=ifloatX};
if (align=="right") {floatX=document.body.offsetWidth-ifloatX-layerwidth-20}
if (align=="center") {floatX=Math.round((document.body.offsetWidth-20)/2)-Math.round(layerwidth/2)}
if (valign=="top") {floatY=ifloatY};
if (valign=="bottom") {floatY=document.body.offsetHeight-ifloatY-layerheight}
if (valign=="center") {floatY=Math.round((document.body.offsetHeight-20)/2)-Math.round(layerheight/2)}
}
}
//-->
</script>

</head>

<body>

<table border="0" height="100%" cellpadding="2" width="100%">
  <tr>
    <td valign="top" align="left" height="70" width="33">
      <p><a href="http://www.marsbase.com"><img border="0" src="images/mbstick.gif" align="top"></a><font color="#C0C0C0"><a href="index.shtm
" class="nav"><br>
      <br>
      Home</a><br>
      <a href="timeline.shtm" class="nav">
      Time</a><br>
      <a href="instructions.shtm" class="nav">
      Plans</a><br>
      <a href="mecha.shtm" class="nav">
      Mecha</a><br>
      <a href="ground.shtm" class="nav">
      Ground</a><br>
      <a href="air.shtm" class="nav">
      Air</a><br>
      <a href="links.shtm" class="nav">
      Links</a><br>
      <a href="credits.shtm" class="nav">Credits</a><br>
      <a href="mailto:buster@marsbase.com" class="nav">Email</a>
      </font>
      </p>
    </td>
    <td valign="top" align="left" width="3" height="100%"><img border="0" src="images/line.jpg" width="3" height="100%"></td>
    <td valign="top" align="left" width="80">