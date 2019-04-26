/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.exemplosessaoauth.servlet;

import br.senac.tads.exemplosessaoauth.entidade.UsuarioSistema;
import br.senac.tads.exemplosessaoauth.service.UsuarioSistemaService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author fernando.tsuda
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String senhaAberta = request.getParameter("senha");

        // Busca UsuarioSistema por username e verifica senha
        UsuarioSistemaService service = new UsuarioSistemaService();

        UsuarioSistema usuario = service.buscarPorUsername(username);
        if (usuario != null && usuario.validarSenha(senhaAberta)) {
            // Se sucesso, salva usuario na sessao e redireciona para /protegido/home
            HttpSession sessao = request.getSession();
            sessao.setAttribute("usuario", usuario);
            response.sendRedirect("protegido/home");
        } else {
             // Se erro, reapresenta tela de login com msg de erro
             request.setAttribute("msgErro", "Usuário ou senha inválidos");
             request.getRequestDispatcher("/WEB-INF/jsp/login.jsp")
                     .forward(request, response);
             
        }

       
    }

}
