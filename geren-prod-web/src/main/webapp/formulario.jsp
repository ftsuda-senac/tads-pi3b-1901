<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Produto - Inclusão</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Produto - Inclusão</h1>
        <div>
            <form action="produto" method="post">
                <input type="hidden" name="escondido" value="xpto" />
                <div>
                    <label>Nome</label>
                    <div>
                        <input name="nome" type="text" required />
                    </div>
                    <c:if test="${not empty erroNome}">
                        <div style="background-color: lightpink"><c:out value="${erroNome}" /></div>
                    </c:if>
                </div>
                <div>
                    <label>Senha</label>
                    <div>
                        <input name="senha" type="password" />
                    </div>
                </div>
                <div>
                    <label>Data</label>
                    <div>
                        <input name="data" type="date" />
                    </div>
                </div>
                <div>
                    <label>Descrição</label>
                    <div>
                        <textarea name="descricao"></textarea>
                    </div>
                    <c:if test="${not empty erroDescricao}">
                        <div style="background-color: lightpink"><c:out value="${erroDescricao}" /></div>
                    </c:if>
                </div>
                <div>
                    <label>Quantidade</label>
                    <div>
                        <input name="quantidade" type="text" />
                    </div>
                </div>
                <div>
                    <label>Preço compra</label>
                    <div>
                        <input name="prcompra" type="text" />
                    </div>
                </div>
                <div>
                    <label>Preço venda</label>
                    <div>
                        <input name="prvenda" type="text" />
                    </div>
                </div>
                <fieldset>
                    <legend>Disponível</legend>
                    <input type="radio" name="disponivel" value="1" /> <label>Sim</label>
                    <input type="radio" name="disponivel" value="0" /> <label>Não</label>
                </fieldset>
                <fieldset>
                    <legend>Categorias</legend>
                    <input type="checkbox" name="categoria" value="1" /> <label>Categoria 1</label>
                    <input type="checkbox" name="categoria" value="2" /> <label>Categoria 2</label>
                    <input type="checkbox" name="categoria" value="3" /> <label>Categoria 3</label>
                    <input type="checkbox" name="categoria" value="4" /> <label>Categoria 4</label>
                    <input type="checkbox" name="categoria" value="5" /> <label>Categoria 5</label>
                    <c:if test="${not empty erroCategoria}">
                        <div style="background-color: lightpink"><c:out value="${erroCategoria}" /></div>
                    </c:if>
                </fieldset>
                <div>
                    <select>
                        <option value="1">Opção 1</option>
                        <option value="2">Opção 2</option>
                        <option value="3">Opção 3</option>
                        <option value="4">Opção 4</option>
                    </select>
                </div>
                <button type="submit">Salvar</button>
                <button type="reset">Resetar</button>
            </form>

        </div>
    </body>
</html>
