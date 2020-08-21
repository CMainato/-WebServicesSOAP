<%-- 
    Document   : newjsp
    Created on : 20/08/2020, 18:58:58
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pago Horas Extras</title>
        
    </head>
    <body>
        <h1>Pago Horas Extras</h1>
        <%! String valor1,valor2,valor3,valor4,valor5,valor6,valor7;
        %>
        
        <form action="newjsp.jsp" method="POST">
            <div class="form-group">
                <div
               <label for="txt_nombre"> Ingrese el pago por hora</label>
               <input type="text" name="txt_num1"/>
                </div>
                
                 <div
               <label for="txt_nombre"> Ingrese las horas que trabajo el lunes</label>
               <input type="text" name="txt_num2"/>
                </div>
                
                 <div
               <label for="txt_nombre"> Ingrese las horas que trabajo el martes</label>
               <input type="text" name="txt_num3"/>
                </div>
                
                 <div
               <label for="txt_nombre"> Ingrese las horas que trabajo el miercoles</label>
               <input type="text" name="txt_num4"/>
                </div>
                
                 <div
               <label for="txt_nombre"> Ingrese las horas que trabajo el jueves</label>
               <input type="text" name="txt_num5"/>
                </div>
                
                 <div
               <label for="txt_nombre"> Ingrese las horas que trabajo el viernes</label>
               <input type="text" name="txt_num6"/>
                </div>
                
                 <div
               <label for="txt_nombre"> Ingrese las horas que trabajo el sabado</label>
               <input type="text" name="txt_num7"/>
                </div>
                
                  <div class="form-group text-center">
                       <button type="submit" class="btn btn-primary">Enviar datos
                           </button>
                
               
                </div>
                
            </div>
        </form>
        <%valor1= request.getParameter("txt_num1");%>
        <%valor2= request.getParameter("txt_num2");%>
        <%valor3= request.getParameter("txt_num3");%>
        <%valor4= request.getParameter("txt_num4");%>
        <%valor5= request.getParameter("txt_num5");%>
        <%valor6= request.getParameter("txt_num6");%>
        <%valor7= request.getParameter("txt_num7");%>
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
	double result = port.suma(a, b, c, d, e, f, g);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
