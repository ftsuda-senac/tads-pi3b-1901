<%-- 
    Document   : exemplo
    Created on : 21/03/2019, 21:54:08
    Author     : fernando.tsuda
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        %>
        <h2>Welcome <span style="text-decoration: underline"><%= nome %></span>  sua idade é <%= outro.getYear() %> anos</h2>
        <img src="temer-livre.jpg">
        <%
            for (int i = 0; i < 100; i++) {
            %>
        <h2>Teste <%= i%></h2>
        <%
            }
            %>
    </body>
</html>
