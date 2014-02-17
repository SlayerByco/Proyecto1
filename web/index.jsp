<%-- 
    Document   : index
    Created on : 06-feb-2014, 9:11:46
    Author     : A7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" rel="stylesheet" href="stylesheet.css"/>

    </head>
    <body>
        <script type="text/javascript">

            function cambiarClase() {
                if (document.getElementById('user').value == '' || document.getElementById('pass').value == '') {
                    
                    if (document.getElementById('user').value == '') {
                        document.getElementById('avisoUser').setAttribute("class", "barraChange");
                        //document.getElementById('avisoUser').className = "barraChange";
                    }
                    if (document.getElementById('pass').value == '') {
                        document.getElementById('avisoEmail').setAttribute("class", "barraChange");
                    }
                }
                if(document.getElementById('user').value != '' ){
                    document.getElementById('avisoUser').setAttribute("class", "barra");
                   
                }
                if(document.getElementById('pass').value != ''){
                     document.getElementById('avisoEmail').setAttribute("class", "barra");
                }
            }

        </script>
        <div id="contenedor">
            <form>
                <span>Username</span><br>
                <div id="avisoUser" class="barra"><img src="imagenes/Captura.PNG"/> Please write only alphanumeric characters, this field is required.</div>
                <input type="text" id="user"><br>
                <span>Email</span><br>
                <div id="avisoEmail" class="barra"><img src="imagenes/Captura.PNG"/> Please write a correct Email address, this field is required.</div>
                <input type="text" id="pass"><br>
                <input type="button" id="bot" value="GO" onclick="cambiarClase()">
            </form>
        </div>
    </body>
</html>
