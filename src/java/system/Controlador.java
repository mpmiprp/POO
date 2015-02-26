/*
 * Controlador.java
 *
 */

package system;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class Controlador extends HttpServlet
   { boolean debug         = true;
	 private String error  = "/inicio.jsp";
	 private String jspdir = "";
 	 private HashMap comandos;

	 public void init(ServletConfig config) throws ServletException
	    { super.init(config);
	 	  iniciaComandos();
	    }

     public void service(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException
        { HttpSession session = req.getSession(true);
		  String siguiente="";
		  try{ if(debug){System.out.println("[Controlador]: comando="+req.getParameter("cmd"));}
			   Comando cmd = buscaComando(req.getParameter("cmd"));
			   siguiente = cmd.ejecuta(req);
		     }
		  catch (ComandoException e)
		     { e.printStackTrace(System.out);

			   req.setAttribute("javax.servlet.jsp.jspException", e);
			   siguiente = error;
		     }
		  RequestDispatcher rd;
		  if(debug){System.out.println("[Controlador] -> "+jspdir+siguiente);}
		  rd = getServletContext().getRequestDispatcher(jspdir+siguiente);
		  rd.forward(req, res);
	    }

	 private Comando buscaComando(String cmd)throws ComandoException
	    { if(cmd == null){cmd = "sessionover";}
		  if(comandos.containsKey(cmd.toLowerCase())){return (Comando)comandos.get(cmd.toLowerCase());}
		  else{throw new ComandoException("Comando Invalido !!!");}
	    }

	 private void iniciaComandos()
	    {       comandos = new HashMap();
                    comandos.put("alta",                                new ComandoInserta                      ("/altaempleadoresponse.jsp"));
                    comandos.put("busca_eliminar",                      new ComandoBusca                        ("/bajaempleado1.jsp"));
                    comandos.put("elimina",                             new ComandoElimina                      ("/bajaempleado2.jsp"));
                   comandos.put("busca_modificar",                      new ComandoBusca                        ("/modificacionempleado1.jsp"));
                   comandos.put("modifica",                             new ComandoActualiza                     ("/modificacionempleado2.jsp"));
         }           
   }
