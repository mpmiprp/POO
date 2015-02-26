<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<% String jspPath=""; %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="<%=jspPath%>styles/vehiculos.css" rel="stylesheet" type="text/css">
<title>Untitled Document</title>
</head>

<frameset rows="130,*" cols="*" frameborder="no" border="0"   framespacing="0">
  <frame src="top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="160,*" frameborder="no" border="0" framespacing="0">
   <frame   src="menu.jsp" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" />
  
   <frame src="inicio.jsp" name="mainFrame" noresize="noresize" id="mainFrame" title="mainFrame" />
  </frameset>
</frameset>
<noframes>
<body>
</body>
<script language="JavaScript" type="text/javascript" src="<%=jspPath%>styles/js/ttips.js"></script>     
</noframes>
</html>

