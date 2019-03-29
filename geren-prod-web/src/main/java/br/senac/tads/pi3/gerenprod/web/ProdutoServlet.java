/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.gerenprod.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.Arrays;
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
@WebServlet(name = "ProdutoServlet", urlPatterns = {"/produto"})
public class ProdutoServlet extends HttpServlet {

    private void processarRequisicao(String metodoHttp, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // RECUPERA INFORMACOES DA REQUISICAO
        String nome = request.getParameter("nome");
        String descricao = request.getParameter("descricao");
        String senha = request.getParameter("senha");
        String quantidadeStr = request.getParameter("quantidade");
        String precoCompraStr = request.getParameter("prcompra");
        String precoVendaStr = request.getParameter("prvenda");
        String disponivelStr = request.getParameter("disponivel");
        String[] categoriasArr = request.getParameterValues("categoria");

        // VALIDAR DADOS
        boolean temErros = false;
        if (nome == null || nome.length() == 0) {
            temErros = true;
            request.setAttribute("erroNome", "Nome não preenchido");
        }
        if (descricao == null || descricao.length() == 0) {
            temErros = true;
            request.setAttribute("erroDescricao", "Descrição não preenchida");
        }
        if (categoriasArr == null || categoriasArr.length == 0) {
            temErros = true;
            request.setAttribute("erroCategoria", "Categoria não selecionada");
        }

        if (temErros) {
            // REAPRESENTA FORMULARIO INDICANDO OS ERROS
            RequestDispatcher dispatcher = request.getRequestDispatcher("formulario.jsp");
            dispatcher.forward(request, response);
        }

        // ARMAZENANDO VALORES COMO ATRIBUTOS
        request.setAttribute("nome", nome);
        request.setAttribute("descricao", descricao);
        request.setAttribute("senha", senha);
        request.setAttribute("quantidade", Integer.parseInt(quantidadeStr));
        request.setAttribute("precoCompra", new BigDecimal(precoCompraStr));
        request.setAttribute("precoVenda", new BigDecimal(precoVendaStr));
        request.setAttribute("disponivel", "1".equals(disponivelStr) ? "SIM" : "NÃO");
        request.setAttribute("categorias", Arrays.asList(categoriasArr));

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/resultado.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processarRequisicao("GET", request, response);
        RequestDispatcher dispatcher = request.getRequestDispatcher("formulario.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processarRequisicao("GET", request, response);
        RequestDispatcher dispatcher = request.getRequestDispatcher("formulario.jsp");
        dispatcher.forward(request, response);
    }

}
