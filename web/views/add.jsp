<%--
  Created by IntelliJ IDEA.
  User: Pro
  Date: 05.03.2020
  Time: 20:15
  To change this template use File | Settings | File Templates.

  add.jsp — страничка для добавления пользователей;

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add new user</title>
    </head>

    <body>
        <div>
            <h1>Super app!</h1>
        </div>

        <div>
            <%
                if (request.getAttribute("userName") != null) {
                    out.println("<p>Результат '" + request.getAttribute("userName") + "' добавлен!</p>");
                }
            %>
            <div>
                <div>
                    <h2>Добавить вычисление</h2>
                </div>

                <form method="post">
                    <label>Превое значение (целое):
                        <input type="one" name="name"><br/>
                    </label>
                    <label>Второе значение (целое):
                        <input type="two" name="pass"><br/>
                    </label>
                    <p>
                        <select name="menu" size="1">
                            <option selected="selected" value="1">Сложить</option>
                            <option value="2">Вычесть</option>
                            <option value="3">Умножить</option>
                            <option value="4">Разделить</option>
                        </select>
                    </p>

                    <button type="submit">Выполнить</button>
                </form>
            </div>
        </div>

        <div>
            <button onclick="location.href='/'">Back to main</button>
        </div>
    </body>
</html>
