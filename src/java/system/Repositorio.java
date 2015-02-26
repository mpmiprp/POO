/*
 * Repositorio.java
 *
 */

package system;


import java.sql.*;
//import java.io.*;
//import java.net.URL;
//import java.security.MessageDigest;
import java.util.*;
import beans.*;

public class Repositorio
   { boolean debug = true;
      Conexion ClaseCon=null;
      
 

   
  //=================================== getEmpleado() ============================================================
   /**  
    * Devuelve el resultado de la búsqueda mediante el id del empleado.
     */

   public Empleado getEmpleado(String id)
 	{ ClaseCon = new Conexion();
 	  Connection con         = null;
 	  PreparedStatement stmt = null;
 	  ResultSet rs           = null;
 	  String SQL             = "";
          Empleado          emp  = null;
    	  try{ con = ClaseCon.iniciar();
 	       SQL = "SELECT  NOMBRE, SALARIO, EDAD, TELEFONO FROM EMPLEADO WHERE IDEMPLEADO=?";
 	       stmt= con.prepareStatement(SQL);
               stmt.setString(1, id);
 	       rs  = stmt.executeQuery();
               if(rs.next())
 		  { 
                    emp = new Empleado();
                    emp.setNombre(rs.getString("NOMBRE"));
                    emp.setSalario(rs.getDouble("SALARIO"));
                    emp.setEdad(rs.getInt("EDAD"));
                    emp.setTelefono(rs.getString("TELEFONO"));
                    emp.setId(id);
 		  }
 	      }
 	 catch (SQLException e)
 	   { e.printStackTrace(System.out);
 	   }
 	 finally
            { try{ stmt.close();
 		   rs.close();
 		   con.close();
 		  }
 	      catch(SQLException ex)
 	          { System.out.println("Este es el error: "+ex.toString());
 		    ex.printStackTrace(System.out);
 		  }
 	     }
 	 return emp;
  }

 
 //================================ insertEmpleado() ===================================================================
/**
 * Inserta los datos del empleado
 * @param Empleado e
 */
 public String insertEmpleado(Empleado e) throws ComandoException
 	{ ClaseCon = new Conexion();
	  PreparedStatement stmt = null;
	  ResultSet rs = null;
	  String SQL="";
	  Connection con = null;
          String result=null;
	  int res=0;
          try{ con=ClaseCon.iniciar();
	       SQL="INSERT INTO EMPLEADO(NOMBRE, SALARIO, EDAD, TELEFONO)VALUES(?,?,?,?)";
	       stmt=con.prepareStatement(SQL);
               //stmt.setString(1,e.getId());
               stmt.setString(1,e.getNombre());
               stmt.setDouble(2,e.getSalario());
               stmt.setInt(3,e.getEdad());
               stmt.setString(4,e.getTelefono());
	       res=stmt.executeUpdate();
               
               if(res==1)
               {SQL = "SELECT  MAX(IDEMPLEADO) AS ID FROM EMPLEADO";
 	        stmt= con.prepareStatement(SQL);
 	        rs  = stmt.executeQuery();
                if(rs.next())
 		  { 
                    result = rs.getString("id");
 		  }
               }
               
             }
         catch(SQLException ex)
             { System.out.println("insertEmpleado() "+ex.toString());
	       ex.printStackTrace(System.out);
	     }
         finally
             { try{ stmt.close(); } catch(Exception ex){}
	       try{ rs.close();} catch(Exception ex){}
	       try{ con.close();}
	       catch(SQLException ex)
	          { System.out.println("insertEmpleado() "+ex.toString());
	            ex.printStackTrace(System.out);
	          }
	     }
         return result;
    }
 
  
//================================ updateEmpleado() ===================================================================
/**
 * Actualiza los datos del empleado.
 * @param String user : emplado
 */
 public int updateEmpleado(Empleado e) 
 	{ PreparedStatement stmt = null;
	  String SQL="";
          Connection con = null;
          ClaseCon = new Conexion();
	  int result=0;
          try{ con=ClaseCon.iniciar();
               SQL  = "UPDATE  EMPLEADO SET NOMBRE=?, SALARIO=?, EDAD=?, TELEFONO=? WHERE IDEMPLEADO=?";
	       stmt = con.prepareStatement(SQL);
               stmt.setString(1, e.getNombre());
               stmt.setDouble(2, e.getSalario());
               stmt.setInt(3, e.getEdad());
               stmt.setString(4, e.getTelefono());
               stmt.setString(5, e.getId());
               result=stmt.executeUpdate();
          
             }
         catch(SQLException ex)
             { System.out.println("updateEmpleado() "+ex.toString());
	       ex.printStackTrace(System.out);
	     }
         finally
             { try{ stmt.close(); 
	     } 
	       catch(Exception ex)
	          { System.out.println("updateEmpleado "+ex.toString());
	            ex.printStackTrace(System.out);
	          }
	     }
         return result;
    }
 
 
 public int deleteEmpleado(String id) throws ComandoException
 	{ PreparedStatement stmt = null;
	  String SQL = "";
	  int result = 0;
          Connection con = null;
          ClaseCon = new Conexion();
	  try{ con=ClaseCon.iniciar();
               SQL  = "DELETE FROM EMPLEADO WHERE IDEMPLEADO=? ";
	       stmt = con.prepareStatement(SQL);
               stmt.setString(1, id);
               result=stmt.executeUpdate();
             }
         catch(SQLException e)
             { System.out.println("deleteEmpleado()"+e.toString());
	       e.printStackTrace(System.out);
	     }
         finally
             { try{ stmt.close(); 
                  }
               catch(Exception e){
	           System.out.println("deleteEmpleado()"+e.toString());
	            e.printStackTrace(System.out);
               }
	     }
         return result;
    }
  
 
 public ArrayList getEmpleados() throws Exception
 	{ PreparedStatement stmt = null;
	  String SQL="";
	  ResultSet rs =null;
	  Connection con = null;
          ClaseCon = new Conexion();
          Empleado emp=null;
          ArrayList resultado= new ArrayList();
          try{ con=ClaseCon.iniciar();
               SQL="SELECT * FROM EMPLEADO ";
	       stmt=con.prepareStatement(SQL);
               rs=stmt.executeQuery();
               while(rs.next())
               {    emp = new Empleado();
                    emp.setNombre(rs.getString("NOMBRE"));
                    emp.setSalario(rs.getDouble("SALARIO"));
                    emp.setEdad(rs.getInt("EDAD"));
                    emp.setTelefono(rs.getString("TELEFONO"));
                    resultado.add(emp);
               }
             }
         catch(SQLException e)
             { System.out.println("getEmpleados()"+e.toString());
	       e.printStackTrace(System.out);
	     }
         finally
             { try{ stmt.close(); 
                  }
               catch(Exception e){
	           System.out.println("getEmpleados()"+e.toString());
	            e.printStackTrace(System.out);
               }
	     }
         return resultado;
    }
   
 
  
 
public static void main(String[] args)
{
Repositorio rep = new Repositorio();
System.out.println(rep.getEmpleado("1").toString());

}
 
}

