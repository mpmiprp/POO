<%@page import="system.*, java.util.*;"%>
<% 
  String jspPath = "";  
  
    
%>
<html>
    <head>
	 <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	 <link href="<%=jspPath%>styles/estilo.css" rel="stylesheet" type="text/css">
	 <script language="javascript" src="<%=jspPath%>js/functs.js" type="text/javascript"></script>
	 <script>
    
  function window.confirm(str)
  {
  execScript('n=msgbox("'+str+'","4132")', "vbscript");
  return(n==6); 
  }
		

      function buscar(){
		
		document.iniciales.cmd.value = "busca_modificar";
		document.iniciales.target ="modificaresponse";
                document.iniciales.submit();
	}
        
 function modificar()
   { var r=confirm("¿Esta seguro de que desea guardar los cambios?");
     if(r==true)
     {document.iniciales.cmd.value="modifica";
     document.iniciales.target ="modificaresponse";
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
        <iframe name="modificaresponse" src="cp_vacio.jsp" width="540" height="0">
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
                                        <div id="res" style="display:block; border-collapse:collapse" >
                                            <table class="seccion" border="0" cellpadding="0" cellspacing="0" width="100%" bordercolor="#171695" id="table2">
               
                
                <tr>
                    <td>Nombre:<br>
                        <input  autocomplete="off" type="text" style="width:200px;" name="nombre" size="40" id ="nombre" maxlength="45"  onKeyPress="return vLetras(event);" onFocus="this.className='selected';" onBlur="this.className='texto';MayBlnk(this);">
                    </td>
                    <td>Salario:<br>
                        <input  autocomplete="off" type="text" style="width:200px;" name="salario" size="20" id ="salario" maxlength="45"  onKeyPress="return vValidos(event);" onFocus="this.className='selected';" onBlur="this.className='texto';MayBlnk(this);">
                    </td>
                </tr>
                <tr>
                    <td>Edad:<br>
                        <input  autocomplete="off" type="text" style="width:200px;" name="edad" size="20" id ="edad" maxlength="45"  onKeyPress="return vValidos(event);" onFocus="this.className='selected';" onBlur="this.className='texto';MayBlnk(this);">
                    </td>
                    <td>Telefono:<br>
                        <input autocomplete="off" type="text" style="width:200px;" name="telefono"  size="25" id="telefono" maxlength="75" onKeyPress="return vValidos(event);" onFocus="this.className='selected';" onBlur="this.className='';MayBlnk(this);">
                   </td>
                </tr>
                    
                                        <tr>
                                            <td colspan="2"><br />
                                                <font color="#FF0000">*</font>Campos Obligatorios
                                            </td>
                                            <td>
                                                     </td>
                                        </tr>
                                            
                                        </div>	
                                    </td>	</tr>
                                    <tr><td colspan="2" align="center">  
                                        <input name="b1"  class="boton" type="button"  onClick="return modificar();" value="&gt;&gt;Modificar">
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
 <script language="JavaScript" type="text/javascript" src="<%=jspPath%>js/ttips.js"></script>
</html>
