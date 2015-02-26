/*
 * ComandoElimina.java
 *
 */

package system;


import javax.servlet.*;
import javax.servlet.http.*;
import beans.*;
import java.util.*;

public class ComandoElimina extends HttpServlet implements Comando
   { private String siguiente;
     private Repositorio rep;

	 public ComandoElimina(String siguiente)
	    {this.siguiente = siguiente;
             rep = new Repositorio();
            }

	 public String ejecuta(HttpServletRequest request)throws ComandoException
	    { HttpSession session = request.getSession(true);
              
              Empleado bean = (Empleado)session.getAttribute("empleado");
              String id=bean.getId();
              int res=rep.deleteEmpleado(id);
              if(res==1)
                {
                  session.setAttribute("respuesta","ok");
                }
              
              else
                {
                  session.setAttribute("respuesta","error");
                }
              
              return siguiente;
         
           }
   }




