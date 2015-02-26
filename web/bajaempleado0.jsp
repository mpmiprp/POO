<%@page import="system.*, java.util.*;"%>

<html>
    <head>
	 <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	 <link href="styles/estilo.css" rel="stylesheet" type="text/css">
	 <script language="javascript" src="js/functs.js" type="text/javascript"></script>
	 <script>
    
  function window.confirm(str)
  {
  execScript('n=msgbox("'+str+'","4132")', "vbscript");
  return(n==6); 
  }
		

      function buscar(){
		
		document.iniciales.cmd.value = "busca_eliminar";
		document.iniciales.target ="bajaresponse";
                document.iniciales.submit();
	}
        
 function eliminar()
   { var r=confirm("¿Esta seguro de que desea eliminar el registro?");
     if(r==true)
     {document.iniciales.cmd.value="elimina";
     document.iniciales.target ="bajaresponse";
     document.iniciales.submit();
     }
     else
     {
      return false;
     }
   }

    	
        
    
    
</script>
<title></title>
<style type="text/css">
<!--
.style1 {color: #000000}
-->
</style>
</head>

<body>
    <br>
    <table width="700">
    <tr>
        <td> 
        <iframe name="bajaresponse" src="cp_vacio.jsp" width="540" height="0">
        </iframe>
        <form action="Controlador" method="post"  id="iniciales" name="iniciales"/>
        <input type="hidden" name="cmd"/>
         <input type="hidden" name="criterio"/>
        <input type="hidden" name="primero" value="true"/>
        
        <table class="seccion" border="0" cellpadding="0" cellspacing="0" width="100%" bordercolor="#171695" id="principal">
        <th  colspan="2"class="seccion"> Busqueda</th>
        <tr>
            <td>&nbsp;</td> <td>&nbsp;</td>
        </tr>
        <tr>
        <td> Id del empleado:  <br>   
           <input type="text" name="id" maxlength="50" size="20" onKeyPress="return vValidos(event);" onFocus="this.className='selected';" onBlur="this.className='texto';MayBlnk(this);" autocomplete="off">
        </td>
        <td width="48%">
        </td>
    </tr>      
            <tr>
            <td><input name="B2" onClick ="buscar();" type="button" value="Buscar"></td>
        </tr>    
        </table>
        <br>
      
       	<table id="resultado" width="100%" class="seccion" style="display:none; border-collapse:collapse" border="1" cellpadding="2" cellspacing="0">
             <th class="seccion" colspan="2"><p>Resultado de la b&uacute;squeda </p> </th>                       
            <tr><td colspan="2" align="center">
                                        <div id="res" style="display:block; border-collapse:collapse" ></div>	
                                    </td>	</tr>
                                    <tr><td colspan="2" align="center">  
                                        <input name="b1"  class="boton" type="button"  onClick="return eliminar();" value="&gt;&gt;Eliminar">
                    </td></tr>
	 
                                    </table>
                                    
        	<table id="dat" width="100%" class="seccion" style="display:none; border-collapse:collapse" border="1" cellpadding="2" cellspacing="0">
             <th class="seccion" colspan="2"><p>Resultado de la b&uacute;squeda</p> </th>                       
            <tr><td colspan="2" align="center">
                                        <div id="datos" style="display:block; border-collapse:collapse" ></div>	
                                    </td>	</tr>
                                    
	 
                                    </table>
        

  
   
</form>
</td>
</tr> 
</table>
</body>
 <script language="JavaScript" type="text/javascript" src="js/ttips.js"></script>
</html>

