<%-- 
    Document   : newjsp
    Created on : 20/08/2020, 16:44:42
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Pago Horas </title>
    </head>
    <body>
        <%!  String  valor1, valor2, valor3, valor4,valor5, valor6, valor7  ; %>
       
        <form action="newjsp.jsp" method="POST">
            
            <div class="form-group">
                
                 <div 
                <label for="txt_nombre"> Ingrese las horas trabajadas  </label>
                 <input type="text" name="txt_num1"> </input>
                 </div>
                <div 
                <label for="txt_nombre"> Ingrese las horas que trabajo dia:1  </label>
                  <input type="text" name="txt_num2"> </input>
                  </div>
                <div 
                  <label for="txt_nombre">Ingrese las horas que trabajo dia:2  </label>
                  <input type="text" name="txt_num3"> </input>
                    </div>
                  <div 
                  <label for="txt_nombre"> Ingrese las horas que trabajo dia:3 </label>
                  <input type="text" name="txt_num4"> </input>
                                      </div>
                     <div 
                  <label for="txt_nombre"> Ingrese las horas que trabajo dia:4 </label>
                  <input type="text" name="txt_num5"> </input>
                  </div>
                <div 
                  <label for="txt_nombre">Ingrese las horas que trabajo dia:5 </label>
                  <input type="text" name="txt_num6"> </input>
                  </div>
                 <div 
                  <label for="txt_nombre"> Ingrese las horas que trabajo dia:6 </label>
                  <input type="text" name="txt_num7"> </input>
                  </div>
                  
    
    </div>
        
        <div class="form-group text-center">
            
            <button type="submit" class="btn btn-primary"> Enviar datos</button>
 
        </div>
            
        </form>
        <%valor1=request.getParameter("txt_num1");%>
        <%valor2=request.getParameter("txt_num2");%>
        <%valor3=request.getParameter("txt_num3");%>
        <%valor4=request.getParameter("txt_num4");%>
        <%valor5=request.getParameter("txt_num5");%>
        <%valor6=request.getParameter("txt_num6");%>
        <%valor7=request.getParameter("txt_num7");%>
       
        
        
    </body>
</html>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	uddi.OPERACIONES_Service service = new uddi.OPERACIONES_Service();
	uddi.OPERACIONES port = service.getOPERACIONESPort();
	 // TODO initialize WS operation arguments here
	double a = Double.parseDouble(valor1);
	double b = Double.parseDouble(valor2);
        double c = Double.parseDouble(valor3);
	double d = Double.parseDouble(valor4);
        double e = Double.parseDouble(valor5);
	double f = Double.parseDouble(valor6);
        double g = Double.parseDouble(valor7);
	// TODO process result here
	double result = port.horas(a, b);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
