/*
 * Conexion.java
 *
 */

package system;

import java.sql.*;

    public class Conexion
       { public Connection con=null;

         public Connection iniciar()
            { try{ 
                   Class.forName("com.mysql.jdbc.Driver");
                   String url ="jdbc:mysql://localhost/admonempleados";
                   String user = "root";
                   String pwd="administrador";
                   con = DriverManager.getConnection (url, user, pwd);
                   System.out.println("Conexion exitosa");
                   return con;
                 }
              catch(Exception sql)
                 { sql.printStackTrace();
                   return null;
                 }
            }
         
         public void cerrar()
             {
               try { con.close();
                   }
               catch(SQLException sqle){
               sqle.printStackTrace();
               System.out.println("ERROR al cerrar la conexión.");
               }
             }

       }
