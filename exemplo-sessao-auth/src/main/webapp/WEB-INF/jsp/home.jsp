<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Exemplo de Home protegida</h1>
        <c:choose>
            <c:when test="${sessionScope.usuario != null}">
                <div>
                    <h2>Nome completo: <c:out value="${sessionScope.usuario.nomeCompleto}" /></h2>
                    <p>Username: <c:out value="${sessionScope.usuario.username}" /></p>
                    <p>Hash senha: <c:out value="${sessionScope.usuario.hashSenha}" /></p>
                    <p>Papeis</p>
                    <ul>
                        <c:forEach items="${sessionScope.usuario.papeis}" var="pap">
                            <li><c:out value="${pap.nome}" /></li>
                        </c:forEach>
                    </ul>
                    <a href="${pageContext.request.contextPath}/logout">Sair</a>
                </div>

            </c:when>
            <c:otherwise>
                <div>
                    <p>Usuário não fez login</p>
                </div>
            </c:otherwise>
        </c:choose>
    </body>
</html>
