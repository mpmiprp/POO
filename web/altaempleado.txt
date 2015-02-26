<%@page import="system.*, java.util.*;"%>
<html>
    <head>
	 <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	 <link href="styles/estilo.css" rel="stylesheet" type="text/css">
         <script language="javascript" src="js/functs.js" type="text/javascript"></script>
	 <script>
	    function MM_openBrWindow(theURL,winName,features) 
		{ //v2.0
		  window.open(theURL,winName,features);
		}

        // Funcion que valida la primera parte del formulario
          
            function validaInicio()
                { 
                  if (document.iniciales.nombre.value=="")
                    {  alert("Por favor indica el nombre");
                       document.iniciales.nombre.focus();
                       return false; 
                    }
                 
                  if (document.iniciales.salario.value=="")
                    {  alert("Por favor indica el salario");
                       document.iniciales.salario.focus();
                       return false; 
                    }
                    
                    if (document.iniciales.edad.value=="")
                    {  alert("Por favor indica la edad");
                       document.iniciales.edad.focus();
                       return false; 
                    }
                    if (document.iniciales.telefono.value=="")
                    {  alert("Por favor indica el telefono");
                       document.iniciales.telefono.focus();
                       return false; 
                    }
                  document.iniciales.cmd.value="alta";
                  document.iniciales.target ="altaresponse";
                  document.iniciales.submit();
                }
    
		
          
</script>
<title>Administracion de Empleados</title>
</head>

<body>
 <br>
  <table width="700">
    <tr>
        <td>
            <iframe name="altaresponse" src="cp_vacio.jsp" width="540" height="0">
            </iframe>
            
            <form action="Controlador" method="post"  id="iniciales" name="iniciales"/>
                <input type="hidden" name="cmd"/>
                <input type="hidden" name="criterio"/>
                <input type="hidden" name="primero" value="true"/>
                
            <table class="seccion" border="0" cellpadding="0" cellspacing="0" width="100%" bordercolor="#171695" id="table2">
                <th  colspan="2"class="seccion">Alta de empleados:</th>
                
                <tr>
                    <td>Nombre:<br>
                        <input  autocomplete="off" type="text" style="width:200px;" name="nombre" size="40" id ="nombre" maxlength="45"  onKeyPress="return vLetras(event);" onFocus="this.className='selected';" onBlur="this.className='texto';MayBlnk(this);">
                    </td>
                    <td>Salario:<br>
                        <input  autocomplete="off" type="text" style="width:200px;" name="salario" size="20" id ="salario" maxlength="45"  onKeyPress="return vNumeros(event);" onFocus="this.className='selected';" onBlur="this.className='texto';MayBlnk(this);">
                    </td>
                </tr>
                <tr>
                    <td>Edad:<br>
                        <input  autocomplete="off" type="text" style="width:200px;" name="edad" size="20" id ="edad" maxlength="45"  onKeyPress="return vNumeros(event);" onFocus="this.className='selected';" onBlur="this.className='texto';MayBlnk(this);">
                    </td>
                    <td>Telefono:<br>
                        <input autocomplete="off" type="text" style="width:200px;" name="telefono"  size="25" id="telefono" maxlength="75" onKeyPress="return vNumeros(event);" onFocus="this.className='selected';" onBlur="this.className='';MayBlnk(this);">
                   </td>
                </tr>
                    
                <tr>
                    <td><br />
                        <font color="#FF0000">*</font>Campos Obligatorios
                    </td>
                    <td>
                        <input name="b1"  class="boton" type="button"  onClick="return validaInicio();" value="&gt;&gt;Confirmar">
                    </td>
                </tr>
                </table>
        
        <br>
        <br>
        
      	  
          
         <table id="resinsert" width="100%" class="seccion" style="display:none; border-collapse:collapse" border="1" cellpadding="2" cellspacing="0">
            <th class="seccion" colspan="2"><p>Resultado de la operaci&oacute;n </p> </th>                       
            <tr>
                <td colspan="2" align="center">
                    <div id="insert" style="display:block; border-collapse:collapse" ></div>	
                </td>	
            </tr>
            
          </table>
          
          <table id="ya" width="100%" class="seccion" style="display:none; border-collapse:collapse" border="1" cellpadding="2" cellspacing="0">
            <th class="seccion" colspan="2"><p>Resultado de la operaci&oacute;n </p> </th>                       
            <tr>
                <td colspan="2" align="center">
                    <div id="existe" style="display:block; border-collapse:collapse" ></div>	
                </td>	
            </tr>
            
          </table>
                                    
                                    	
  
   
</form>
</td>
</tr> 
</table>
</body>
 <script language="JavaScript" type="text/javascript" src="js/ttips.js"></script>
</html>
