/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.gerenprod.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fernando.tsuda
 */
@WebServlet(name = "Exemplo3Servlet", urlPatterns = {"/exemplo3"})
public class Exemplo3Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String dtNasc = request.getParameter("nascimento");

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate date = LocalDate.parse(dtNasc, formatter);
        LocalDate outro = LocalDate.now().minusYears(date.getYear());

        request.setAttribute("nomeAttr", nome);
        request.setAttribute("idadeAttr", outro.getYear());
        
        List<String> teste = Arrays.asList("item 1", "item 2", "item 3");
        request.setAttribute("testeAttr",teste);
        
        RequestDispatcher dispatcher = 
                request.getRequestDispatcher("exemplo3.jsp");
        dispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
