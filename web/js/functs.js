/*****************/
//document.onselectstart=new Function ('return false');
document.onpaste=new Function ('return false');
/*****************/


function fMoneda(num) {
 num = num.toString().replace(/\$|\,/g,'');
 if(isNaN(num))
 num = "0";
 sign = (num == (num = Math.abs(num)));
 num = Math.floor(num*100+0.50000000001);
 cents = num%100;
 num = Math.floor(num/100).toString();
 if(cents<10)
 cents = "0" + cents;
 for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++) num = num.substring(0,num.length-(4*i+3))+','+ num.substring(num.length-(4*i+3));
 return (((sign)?'':'-') + num + '.' + cents);
}

function pCapa(id) //v2.0
   {
     var i, id, args=pCapa.arguments;
     for (i=0; i<(args.length); i++) {
       id= args[i];
       document.getElementById(id).style.visibility = 'visible';
      }
   }

function aCapa(id) //v2.0
   {
     var i, id, args=aCapa.arguments;
     for (i=0; i<(args.length); i++) {
       id= args[i];
       document.getElementById(id).style.visibility = 'hidden';
      }
   }



function mCapa(id) //v2.0
   {
     var i, id, args=mCapa.arguments;
     for (i=0; i<(args.length); i++) {
       id= args[i];
     document.getElementById(id).style.display = 'block';
      }
   }

function oCapa(id) //v2.0
   {
     var i, id, args=oCapa.arguments;
     for (i=0; i<(args.length); i++) {
       id= args[i];
       document.getElementById(id).style.display = 'none';
      }
   }



//Cambia a Mayúsculas y pone el fondo blanco
function MayBlnk(o){
o.value=o.value.toUpperCase();
o.className='';
}

//Cambia a Minúsculas y pone el fondo blanco
function MinBlnk(o){
o.value=o.value.toLowerCase();
o.className='';
}

// Validación de datos en un campo
var tLetras ="abcdefghijklmnñopqrstuvwxyzáéíóúüABCDEFGHIJKLMNÑOPQRSTUVWXYZÁÉÍÓÚÜ ";
var tNumeros ="0123456789";
var tStrRFC ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
var tLetrNums =tLetras+tNumeros;
var tValidos = tLetras+tNumeros+".,-";
var tCorreos =/^([\w-]+(?:\.[\w-]+)*)@((:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
var bolReg=false;
var keycode;


function vLetras(e){
  bolReg=false;
  keycode= (e.keyCode) ? e.keyCode: e.which;
  if (keycode==9 || keycode==46 || keycode==8) { bolReg=true;}
  if (tLetras.indexOf(String.fromCharCode(keycode))!=-1) { bolReg=true;}
  return bolReg;
}

function vAlfa(e){
  bolReg=false;
  keycode= (e.keyCode) ? e.keyCode: e.which;
  if (keycode==9 || keycode==46 || keycode==8) { bolReg=true;}
  if (tLetrNums.indexOf(String.fromCharCode(keycode))!=-1) { bolReg=true;}
  return bolReg;
}
function vNumeros(e){
  bolReg=false;
  keycode= (e.keyCode) ? e.keyCode: e.which;
  if (keycode==9 || keycode==46 || keycode==8) { bolReg=true;}
  if (tNumeros.indexOf(String.fromCharCode(keycode))!=-1) { bolReg=true;}
  return bolReg;
}

function vRFCstr(e){
  bolReg=false;
  keycode= (e.keyCode) ? e.keyCode: e.which;
  if (keycode==9 || keycode==46 || keycode==8) { bolReg=true;}
  if (tStrRFC.indexOf(String.fromCharCode(keycode))!=-1) { bolReg=true;}
  return bolReg;
}


function vValidos(e){
  bolReg=false;
  keycode= (e.keyCode) ? e.keyCode: e.which;
  if (keycode==9 || keycode==46 || keycode==8) { bolReg=true;}
  if (tValidos.indexOf(String.fromCharCode(keycode))!=-1) { bolReg=true;}
  return bolReg;
}


function vCorreos(valor){
  bolReg=false;
   if (tCorreos.test(valor)){bolReg=true}
  return bolReg;
}


function thadump() {
  var eles = document.solicitud.elements;
  var inps = document.solicitud.getElementsByTagName("input");
  var sels = document.solicitud.getElementsByTagName("select");
      for(i=0;i<eles.length;i++) {
      var tmpstr=i+" es "+eles.item(i).type+" se llama "+eles.item(i).name+"<br>";
      document.write(tmpstr);
    }

      document.write("<br>ooof<br>");

      for(i=0;i<sels.length;i++) {
      var tmpstr=i+" es "+sels.item(i).type+" se llama "+sels.item(i).name+"<br>";
      document.write(tmpstr);
    }
      for(i=0;i<inps.length;i++) {
      var tmpstr=i+" es "+inps.item(i).type+" se llama "+inps.item(i).name+"<br>";
      document.write(tmpstr);
    }
}

function cImagen(cual,acual){
//Esta funcion espera un ID para cambiarlo y un SRC RELATIVO para el cambio

//Si las imágenes están en otro folder, uso la ruta relativa ó absoluta...
var tmpRutaImg="jsp/hipotecario/images/"

// Primero pongo todas en su estado inicial
if (document.getElementById("here1")!=null) {document.getElementById("here1").src=tmpRutaImg+"but01_of.gif";}
if (document.getElementById("here2")!=null) {document.getElementById("here2").src=tmpRutaImg+"but02_of.gif";}
if (document.getElementById("here3")!=null) {document.getElementById("here3").src=tmpRutaImg+"but03_of.gif";}
if (document.getElementById("here4")!=null) {document.getElementById("here4").src=tmpRutaImg+"but04_of.gif";}
if (document.getElementById("here5")!=null) {document.getElementById("here5").src=tmpRutaImg+"but05_of.gif";}
if (document.getElementById("here6")!=null) {document.getElementById("here6").src=tmpRutaImg+"but06_of.gif";}

// Luego cambio lo solicitado
document.getElementById(cual).src=acual;
}

function formateadatos(valorformato,campo){
var numberTest = new NumberFormat(valorformato);
numberTest.setCurrency(true);
numberTest.setCommas(true);
numberTest.setPlaces(2);
numberTest.setCurrencyPrefix("");
campo.value=numberTest.toFormatted();
}


