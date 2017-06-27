<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/skeleton.css">
        <link rel="stylesheet" href="css/m.css">
        <link rel="icon" type="image/png" href="images/favicon.png">
        <title></title>
    </head>
    <body>
        <jsp:useBean id="usuarioConectado" class="entity.Usuario" scope="page"/>
            <div class="container">
                <section class="header">
                    <h1 class="title">Bienvenido ADMIN.</h1>
                </section>
                <div class="navbar-spacer"></div>
                <nav class="navbar">
                    <div class="container">
                        <ul class="navbar-list">
                        <c:set var="var" value="1"></c:set>
                        <c:forEach items="${listadoMenu}" var="objMenuPadre">
                            <li class="navbar-item">
                                <a class="navbar-link" href="#" data-popover="#codeNavPopover${var}"></a>
                                <c:if test="${objMenuPadre.padreMenu.intValue()!=0}">
                                    <div id="codeNavPopover${v}" class="popover">
                                        <ul class="popover-list">
                                            <c:forEach items="${listadoMenu}" var="objMenuHijo"> 
                                                <c:if test="${objMenuHijo.idMenu.intValue() !=0 && objMenuPadre.idMenu.intValue() ==objMenuHijo.padreMenu.intValue()}">                                                             
                                                    <li class="popover-item"><a href="<c:out value="${objMenuHijo.destinoMenu.toString()}"/>"><c:out value="${objMenuHijo.nombreMenu.toString()}"></c:out></a>
                                                        </li>                       
                                                </c:if>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </c:if>
                            </c:forEach>
                    </ul>
                </div>
            </nav>
        </nav>
    </div>
</body>
</html>
