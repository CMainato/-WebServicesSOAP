/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clientewebservice1;

import javax.swing.JOptionPane;

/**
 *
 * @author usuario
 */
public class ClienteWebService1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
      
       
        double pago_horas= Double.parseDouble(JOptionPane.showInputDialog("Ingrese el pago por horas del dia"));
        double lunes = Double.parseDouble(JOptionPane.showInputDialog("Ingrese el valor por horas del Dia: Lunes"));
        double martes = Double.parseDouble(JOptionPane.showInputDialog("Ingrese el valor por horas del Dia: Martes"));
        double miercoles = Double.parseDouble(JOptionPane.showInputDialog("Ingrese el valor por horas del Dia: Miercoles"));
        double jueves = Double.parseDouble(JOptionPane.showInputDialog("Ingrese el valor por horas del Dia: Juevess"));
        double viernes = Double.parseDouble(JOptionPane.showInputDialog("Ingrese el valor por horas del Dia: Viernes"));
        double sabado = Double.parseDouble(JOptionPane.showInputDialog("Ingrese el valor por horas del Dia Sabado: "));
       
       
        
       double total = suma( pago_horas, lunes, martes, miercoles, jueves, viernes, sabado);
        
        JOptionPane.showMessageDialog(null, "El salario es: "+total);
        
    }
    
    

    private static double suma(double a, double b, double c, double d, double e, double f, double g) {
        uddi.OPERACIONES_Service service = new uddi.OPERACIONES_Service();
        uddi.OPERACIONES port = service.getOPERACIONESPort();
        return port.suma(a, b, c, d, e, f, g);
    }
    
}
