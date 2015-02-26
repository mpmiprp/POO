/*
 * Empleado.java
 *
 */

package beans;

import java.io.Serializable;
import java.util.*;

public class Empleado implements Serializable{
    private String id;
    private String nombre, telefono;
    private double salario;
    private int edad;
    /** Creates a new instance of Empleado */
    
    public Empleado()
    {}
    
    public Empleado(String i, String nom, double sal, int ed, String tel) 
    {
        id=i;
        nombre = nom;
        salario = sal;
        edad = ed;
        telefono = tel;    
    }
    
  //============================= ACCESORS ===================================================

   
    public String getId()
    {
     return id;
    }
   
    public String getNombre()
    {
     return nombre;
    }
    public double getSalario()
    {
     return salario;
    }
    public int getEdad()
    { return edad;
    }
    public String getTelefono()
    {
     return telefono;
    }
    
    
    //============================ MUTATORS ====================================================
    
    public void setId (String id)
     {
        // this.id hace referencia al atributo id de la calse y id (solo) al parametros.
       this.id = id;
     } 
    public  void setNombre(String nombre)
     {
      this.nombre = nombre;
     }
    public  void setSalario(double salario)
     {
      this.salario = salario;
     }
     public  void setEdad(int edad)
     {
      this.edad = edad;
     }
    
     public void setTelefono (String telefono)
     {
       this.telefono = telefono;
     }
    
     
    
    // ============================== otros metodos =====================================================
    
    public String toString() //Devuelve el contenido del objeto
    {
      return getClass().getName()
       +" Nombre= "+nombre
       +" salario= "+salario
       +" edad = "+edad
       +" telefono ="+telefono;
    }
    
}


