/*
 * ComandoBusca.java
 *
 */

package system;


import javax.servlet.*;
import javax.servlet.http.*;
import beans.*;
import java.util.*;

public class ComandoBusca extends HttpServlet implements Comando
   { private String siguiente;
     private Repositorio rep;

	 public ComandoBusca(String siguiente)
	    {this.siguiente = siguiente;
             rep = new Repositorio();
            }

	 public String ejecuta(HttpServletRequest request)throws ComandoException
	    { HttpSession session = request.getSession(true);

              String id=request.getParameter("id");
              Empleado bean = rep.getEmpleado(id);
              if(bean!=null)
                {
                  session.setAttribute("respuesta","ok");
                  session.setAttribute("id", id);
                  session.setAttribute("empleado", bean);
                }
              
              else
                {
                  session.setAttribute("respuesta","error");
                }
              session.setAttribute("bean",bean);
              return siguiente;
         
           }
   }



