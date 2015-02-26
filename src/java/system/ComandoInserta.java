/*
 * ComandoInserta.java
 *
 */

package system;


import javax.servlet.*;
import javax.servlet.http.*;
import beans.*;
import java.util.*;

public class ComandoInserta extends HttpServlet implements Comando
   { private String siguiente;
     private Repositorio rep;

	 public ComandoInserta(String siguiente)
	    {this.siguiente = siguiente;
             rep = new Repositorio();
            }

	 public String ejecuta(HttpServletRequest request)throws ComandoException
	    { HttpSession session = request.getSession(true);
              
              
              Empleado bean = new Empleado();
              bean.setNombre(request.getParameter("nombre").trim());
              bean.setSalario(Double.parseDouble(request.getParameter("salario").trim()));
              bean.setEdad(Integer.parseInt(request.getParameter("edad").trim()));
              bean.setTelefono(request.getParameter("telefono").trim());
              String id=rep.insertEmpleado(bean);
              if(id!=null)
                {
                  session.setAttribute("respuesta","ok");
                  session.setAttribute("id", id);
                }
              
              else
                {
                  session.setAttribute("respuesta","error");
                }
              session.setAttribute("bean",bean);
              return siguiente;
         
           }
   }



