<%@page import="system.Repositorio, java.util.ArrayList, beans.*;"%>

<%

String respuesta=(String)session.getAttribute("respuesta");

if(respuesta.equals("error")) // No se encontro 
    { String tabla="";
      tabla+="<tr><td>No se encontr&oacute; informaci&oacute;n del empleado."; 
      tabla+="&nbsp;</td></tr>";
      String strTablaDetalleHeader = "<table width='90%' id='resultados' class='seccion' style='display:block; border-collapse:collapse' border='0' cellpadding='2' cellspacing='0'><tr><td width='50%' align='center'></td></tr>";
      String strTablaDetalleFooter = "</table><br>";	
      tabla = strTablaDetalleHeader+tabla+strTablaDetalleFooter;  
%>
    <script>
        if(parent.document.getElementById("dat")!=null)parent.document.getElementById('dat').style.display = 'block';
        if(parent.document.getElementById("principal")!=null)parent.document.getElementById('principal').style.display = 'none'; 
        if(parent.document.getElementById("datos")!=null)parent.document.getElementById("datos").innerHTML="<%=tabla%>";
  
    </script>
    
<% } else if(respuesta.equals("ok"))  // Si se encontró
    { 
      Empleado beanCaso= (Empleado)session.getAttribute("empleado");
      String tabla="";
      tabla+="<tr><td> Id: </td><td>"+beanCaso.getId()+"";
      tabla+="&nbsp;</td></tr>";
      tabla+="<tr><td> Nombre: </td><td>"+beanCaso.getNombre()+"";
      tabla+="&nbsp;</td></tr>";
      tabla+="<tr><td>Salario $: </td><td>"+beanCaso.getSalario()+"";
      tabla+="&nbsp;</td></tr>";
      tabla+="<tr><td>Edad: </td><td>"+ beanCaso.getEdad()+"";
      tabla+="&nbsp;</td></tr>";
      tabla+="<tr><td>Telefono: </td><td>"+ beanCaso.getTelefono()+"";
      tabla+="&nbsp;</td></tr>";
      String strTablaDetalleHeader = "<table width='90%' id='resultados' class='seccion' style='display:block; border-collapse:collapse' border='0' cellpadding='2' cellspacing='0'><tr><td width='50%' align='center'>Atributo</td><td width='50%' align='center'>Descripcion</td></tr>";
      String strTablaDetalleFooter = "</table><br>";	
      tabla = strTablaDetalleHeader+tabla+strTablaDetalleFooter;  
%>
    <script>
        if(parent.document.getElementById("resultado")!=null)parent.document.getElementById('resultado').style.display = 'block';
        if(parent.document.getElementById("principal")!=null)parent.document.getElementById('principal').style.display = 'none'; 
        if(parent.document.getElementById("res")!=null)parent.document.getElementById("res").innerHTML="<%=tabla%>";
  
    </script>
 <% } %>
<%=respuesta%>
