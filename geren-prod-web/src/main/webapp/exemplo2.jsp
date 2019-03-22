<%-- 
    Document   : exemplo
    Created on : 21/03/2019, 21:54:08
    Author     : fernando.tsuda
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Exemplo Servlet</h1>
        <%
            String nome = request.getParameter("nome");
            String dtNasc = request.getParameter("nascimento");
            
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
            LocalDate date = LocalDate.parse(dtNasc, formatter);
            LocalDate outro = LocalDate.now().minusYears(date.getYear());
            
            request.setAttribute("nomeAttr", nome);
            request.setAttribute("idadeAttr", outro.getYear());

        %>
        <h2>Welcome <span style="text-decoration: underline"><c:out value="${nomeAttr}" /></span>  sua idade é <c:out value="${idadeAttr}" /> anos</h2>
        <img src="senac_logo.png">
        <c:forEach begin="0" end="99" var="contador">
            <c:if test="${contador % 2 == 0}">
                <h2>Teste <c:out value="${contador}"/></h2>
            </c:if>
        </c:forEach>

    </body>
</html>
