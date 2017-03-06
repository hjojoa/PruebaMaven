<%-- 
    Document   : salida
    Created on : 3/03/2017, 03:29:56 PM
    Author     : RicardoZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salida</title>
    </head>
    <body>
        <h1>Gracias!</h1>
        <p>
            <%= request.getParameter("nombreUsuario") %>,
            estos colores te gustan:                    
        </p>
        
            <% String [] colores = request.getParameterValues("coloresPref");
                if(colores!=null){
                   for(int i=0; i<colores.length; i++){
            %> 
                       <ul>    
                           <li> 
                               <%= colores[i] %>
                           </li>   
                       </ul>                     
                      
            <%                  
                   }
                }
            %>
       
    </body>
</html>
