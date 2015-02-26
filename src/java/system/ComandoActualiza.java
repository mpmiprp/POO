 // ComandoActualiza.java 

package system;

import javax.servlet.*;
import javax.servlet.http.*;
import beans.*;
import java.util.*;


public class ComandoActualiza extends HttpServlet implements Comando
   { private String siguiente;
     Repositorio rep;
     
	 public ComandoActualiza(String siguiente)
           { this.siguiente = siguiente;
             rep = new Repositorio();
            }

	 public String ejecuta(HttpServletRequest request)throws ComandoException
	    { HttpSession session = request.getSession(true);
              Empleado bean = new Empleado();
              try {
                  if((request.getParameter("nombre")    !=null) && (!request.getParameter("nombre").equals("")))   bean.setNombre(request.getParameter("nombre"));
                  if((request.getParameter("salario")   !=null) && (!request.getParameter("salario").equals("")))  bean.setSalario(Double.parseDouble(request.getParameter("salario")));
                  if((request.getParameter("edad")      !=null)  &&(!request.getParameter("edad").equals("")))     bean.setEdad(Integer.parseInt(request.getParameter("edad")));  
                  if ((request.getParameter("telefono") !=null) && (!request.getParameter("telefono").equals(""))) bean.setTelefono(request.getParameter("telefono"));
                  if ((request.getParameter("id")       !=null) && (!request.getParameter("id").equals("")))      bean.setId(request.getParameter("id"));
                  
                 System.out.println("Bean de entrada"+bean.toString());
                 int res=rep.updateEmpleado(bean);
                 String respuesta="";
                 if(res==1) 
                    { respuesta="ok";
                    }
                 else if(res==0)
                    { respuesta="error";
                     }
                    session.setAttribute("respuesta",respuesta);
                 
              }catch(Exception e)
              {
               System.out.println("Error "+e.getMessage());
               e.printStackTrace(System.out);
              }
                 return siguiente;
             
            }
   }