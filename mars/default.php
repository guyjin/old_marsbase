<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-15" />
	<title>marsbase</title>
	<meta name="generator" content="BBEdit 7.0.3" />
<link rel="stylesheet" href="styles/style.css" media="screen" />
</head>
<body>
<?php
$xh = xslt_create();
$result = xslt_process($xh, 'marbasenavmenu.xml', 'marsnavmenu.xsl');
xslt_free($xh);
echo $result;
?>
</body>
</html>
