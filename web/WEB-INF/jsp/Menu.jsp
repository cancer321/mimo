<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <jsp:include page="/cargaMenu" flush="true"/>
    <jsp:useBean id="usuarioConectado" class="entity." scope="session"/>
    <jsp:useBean id="objMenuPadre" class="" scope="session"></jsp:useBean>
    <jsp:useBean id="objMenuHijo" class="" scope="session"></jsp:useBean> 
</head>
<body>
    <div class="container">
        <section class="header">
            <h1 class="title">Bienvenido ADMIN.</h1>
        </section>
        <div class="navbar-spacer"></div>
        <nav class="navbar">
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
        <div class="docs-section">
            <h6 class="docs-header">meme</h6>
            <p>mimo</p>
        </div>
        <form>
            <div class="row">
                <div class="six columns">
                    <label for="exampleEmailInput">Your email</label>
                    <input class="u-full-width" type="email" placeholder="test@mailbox.com" id="exampleEmailInput">
                </div>
                <div class="six columns">
                    <label for="exampleRecipientInput">Reason for contacting</label>
                    <select class="u-full-width" id="exampleRecipientInput">
                        <option value="Option 1">Questions</option>
                        <option value="Option 2">Admiration</option>
                        <option value="Option 3">Can I get your number?</option>
                    </select>
                </div>
            </div>
            <label for="exampleMessage">Message</label>
            <textarea class="u-full-width" placeholder="Hi Dave ?" id="exampleMessage"></textarea>
            <label class="example-send-yourself-copy">
                <input type="checkbox">
                <span class="label-body">Send a copy to yourself</span>
            </label>
            <input class="button-primary" type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
