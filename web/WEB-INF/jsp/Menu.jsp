<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <jsp:include page="/cargaMenu" flush="true"/>
        <jsp:useBean id="usuarioConectado" class="entity.Usuario" scope="session"/>
        <jsp:useBean id="objMenuPadre" class="entity.Menu" scope="session"></jsp:useBean>
        <jsp:useBean id="objMenuHijo" class="entity.Menu" scope="session"></jsp:useBean> 
            <div class="container">
                <section class="header">
                    <h1 class="title">Bienvenido ADMIN.</h1>
                </section>
                <div class="navbar-spacer"></div>
                <nav class="navbar">
                    <div class="container">
                        <ul class="navbar-list">
                        <c:set var="v" value="1"></c:set>
                        <c:forEach items="${listadoMenu}" var="objMenuPadre">
                            <li class="navbar-item">
                                <a class="navbar-link" href="#" data-popover="#codeNavPopover${v}">Code</a>
                                <c:if test="${objMenuPadre.padreMenu.intValue()==0}">

                                    <div

                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" ><c:out value="${objMenuPadre.nombreMenu}"></c:out> <span class="caret"></span></a>
                                            <ul class="dropdown-menu">
                                            <c:forEach items="${listadoMenu}" var="objMenuHijo"> 
                                                <c:if test="${objMenuHijo.idMenu.intValue() !=0 && objMenuPadre.idMenu.intValue() ==objMenuHijo.padreMenu.intValue()}">                                                             
                                                    <li><a href="<c:out value="${objMenuHijo.destinoMenu.toString()}"/>"><c:out value="${objMenuHijo.nombreMenu.toString()}"></c:out></a></li>                       
                                                    </c:if>
                                                </c:forEach>
                                            </li>
                                        </ul>
                                    </c:if>
                                </c:forEach>
                    </ul>
                </div>
            </nav>
            <div class="container">
                <ul class="navbar-list">
                    <li class="navbar-item">
                        <a class="navbar-link" href="Home.jsp">Home</a>
                    </li>
                    <li class="navbar-item">
                        <p class="navbar-link">meme</p>
                    </li>
                    <li class="navbar-item">
                        <p class="navbar-link">meme</p>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</body>
</html>
