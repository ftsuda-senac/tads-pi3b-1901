<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <div>
            <form action="${pageContext.request.contextPath}" method="post">
                <div>
                    <label>Username</label>
                    <input type="text" name="username" />
                </div>
                <div>
                    <label>Senha</label>
                    <input type="password" name="senha" />
                </div>
                <button type="submit">Enviar</button>
            </form>
        </div>
    </body>
</html>
