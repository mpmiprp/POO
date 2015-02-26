/*
 * Comando.java
 *
 */

package system;


import javax.servlet.*;
import javax.servlet.http.*;

public interface Comando {
	public String ejecuta(HttpServletRequest req)throws ComandoException;
}
