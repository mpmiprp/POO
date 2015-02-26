<%@page import="system.Repositorio, java.util.ArrayList, beans.*;"%>
<!--Aquí se hace la consulta a la base de datos, tomando como parámetro el Estado de Con el se popula lo populable-->
<%
Repositorio rep = new Repositorio();
String respuesta="";
respuesta=(String)session.getAttribute("respuesta");

        if(respuesta.equals("ok"))
            {       String id=(String)session.getAttribute("id");    
             String tabla="";
             tabla+="<tr><td>El registro se insertó de manera satisfactoria. El empleado tiene el siguiente id: "+id+". </td>"; 
             tabla+="</tr>";
             String strTablaDetalleHeader = "<table width='90%' id='resultados' class='seccion' style='display:block; border-collapse:collapse' border='0' cellpadding='2' cellspacing='0'>";
             String strTablaDetalleFooter = "</table><br>";	
             tabla = strTablaDetalleHeader+tabla+strTablaDetalleFooter;  
            
            
            %>
             <script>
      if(parent.document.getElementById("resinsert")!=null)parent.document.getElementById('resinsert').style.display = 'block';
      if(parent.document.getElementById("table2")!=null)parent.document.getElementById('table2').style.display = 'none'; 
      if(parent.document.getElementById("dat")!=null)parent.document.getElementById('dat').style.display = 'none'; 
      if(parent.document.getElementById("insert")!=null)parent.document.getElementById("insert").innerHTML="<%=tabla%>";
 
  
            </script>
            
            <%}
        else if(respuesta.equals("error"))
            {
            
            String tabla="";
             tabla+="<tr><td>El caso N O pudo insertarse de manera satisfactoria </td>"; 
             tabla+="</tr>";
             String strTablaDetalleHeader = "<table width='90%' id='resultados' class='seccion' style='display:block; border-collapse:collapse' border='0' cellpadding='2' cellspacing='0'>";
             String strTablaDetalleFooter = "</table><br>";	
             tabla = strTablaDetalleHeader+tabla+strTablaDetalleFooter;  
            %>
            
            <script>
              if(parent.document.getElementById("resinsert")!=null)parent.document.getElementById('resinsert').style.display = 'block';
              if(parent.document.getElementById("table2")!=null)parent.document.getElementById('table2').style.display = 'none'; 
              if(parent.document.getElementById("dat")!=null)parent.document.getElementById('dat').style.display = 'none'; 
              if(parent.document.getElementById("insert")!=null)parent.document.getElementById("insert").innerHTML="<%=tabla%>";
 
            </script>
            
            <%
  } %>
<%=respuesta%>

    
    <%--
    This example uses JSTL, uncomment the taglib directive above.
    To test, display the page like this: index.jsp?sayHello=true&name=Murphy
    --%>
    <%--
    <c:if test="${param.sayHello}">
        <!-- Let's welcome the user ${param.name} -->
        Hello ${param.name}!
    </c:if>
    --%>
    
    </body>
</html>
