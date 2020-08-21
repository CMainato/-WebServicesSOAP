
package uddi;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.2
 * 
 */
@WebService(name = "oPERACIONES", targetNamespace = "http://UDDI/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface OPERACIONES {


    /**
     * 
     * @param a
     * @param b
     * @param c
     * @param d
     * @param e
     * @param f
     * @param g
     * @return
     *     returns double
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "suma", targetNamespace = "http://UDDI/", className = "uddi.Suma")
    @ResponseWrapper(localName = "sumaResponse", targetNamespace = "http://UDDI/", className = "uddi.SumaResponse")
    @Action(input = "http://UDDI/oPERACIONES/sumaRequest", output = "http://UDDI/oPERACIONES/sumaResponse")
    public double suma(
        @WebParam(name = "a", targetNamespace = "")
        double a,
        @WebParam(name = "b", targetNamespace = "")
        double b,
        @WebParam(name = "c", targetNamespace = "")
        double c,
        @WebParam(name = "d", targetNamespace = "")
        double d,
        @WebParam(name = "e", targetNamespace = "")
        double e,
        @WebParam(name = "f", targetNamespace = "")
        double f,
        @WebParam(name = "g", targetNamespace = "")
        double g);

}
