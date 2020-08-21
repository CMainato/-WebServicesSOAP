/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UDDI;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author usuario
 */
@WebService(serviceName = "oPERACIONES")
public class oPERACIONES {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "suma")
    public double horas(@WebParam(name = "a") double pagoHora,@WebParam(name = "b") double lunes,@WebParam(name = "c") double martes
    ,@WebParam(name = "d") double mierco,@WebParam(name = "e") double juev,@WebParam(name = "f") double viern,@WebParam(name = "g") double sabado) {
        
        
         double resultado;
        return resultado =((pagoHora)*(lunes+martes+mierco+juev+viern+sabado));
    }
}
