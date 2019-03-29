<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado <c:out value="${metodoHttp}" /></h1>
        <div>
            <div>Nome: <c:out value="${nome}" /></div>
            <div>Senha: <c:out value="${senha}" /></div>
            <div>Descrição: <c:out value="${descricao}" /></div>
            <div>Quantidade: <c:out value="${quantidade}" /></div>
            <div>Preço compra: <fmt:formatNumber type="currency" value="${precoCompra}" /></div>
            <div>Preço venda: <fmt:formatNumber type="currency" value="${precoCompra}" /></div>
            <div>Disponível: <c:out value="${disponivel}" /></div>
            <div>Categorias:
                <c:choose>
                    <c:when test="${not empty categorias}">
                        <ul>
                            <c:forEach items="${categorias}" var="cat">
                                <li><c:out value="${cat}" /></li>
                            </c:forEach>
                        </ul>
                    </c:when>
                    <c:otherwise>
                        Nenhuma selecionada
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </body>
</html>
