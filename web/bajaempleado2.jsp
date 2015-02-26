<%@page import="system.Repositorio, java.util.ArrayList, beans.*;"%>

<%

String respuesta=(String)session.getAttribute("respuesta");

if(respuesta.equals("error")) // No se encontro 
    { String tabla="";
      tabla+="<tr><td>No se pudo borrar el registro del empleado."; 
      tabla+="&nbsp;</td></tr>";
      String strTablaDetalleHeader = "<table width='90%' id='resultados' class='seccion' style='display:block; border-collapse:collapse' border='0' cellpadding='2' cellspacing='0'><tr><td width='50%' align='center'></td></tr>";
      String strTablaDetalleFooter = "</table><br>";	
      tabla = strTablaDetalleHeader+tabla+strTablaDetalleFooter;  
%>
    <script>
        if(parent.document.getElementById("dat")!=null)parent.document.getElementById('dat').style.display = 'block';
        if(parent.document.getElementById("principal")!=null)parent.document.getElementById('principal').style.display = 'none'; 
        if(parent.document.getElementById("datos")!=null)parent.document.getElementById("datos").innerHTML="<%=tabla%>";
        if(parent.document.getElementById("resultado")!=null)parent.document.getElementById('resultado').style.display = 'none'; 
        
    </script>
    
<% } else if(respuesta.equals("ok"))  // Si se encontró
    { 
      String tabla="";
      tabla+="<tr><td>El registro fue borrado satisfactoriamente."; 
      tabla+="&nbsp;</td></tr>";
      String strTablaDetalleHeader = "<table width='90%' id='resultados' class='seccion' style='display:block; border-collapse:collapse' border='0' cellpadding='2' cellspacing='0'><tr><td width='50%' align='center'></td></tr>";
      String strTablaDetalleFooter = "</table><br>";	
      tabla = strTablaDetalleHeader+tabla+strTablaDetalleFooter;
%>
    <script>
         if(parent.document.getElementById("dat")!=null)parent.document.getElementById('dat').style.display = 'block';
        if(parent.document.getElementById("principal")!=null)parent.document.getElementById('principal').style.display = 'none'; 
        if(parent.document.getElementById("datos")!=null)parent.document.getElementById("datos").innerHTML="<%=tabla%>";
        if(parent.document.getElementById("resultado")!=null)parent.document.getElementById('resultado').style.display = 'none'; 
        
    </script>
 <% } %>
<%=respuesta%>
    
   