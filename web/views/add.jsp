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
                    out.println("<p>User '" + request.getAttribute("userName") + "' added!</p>");
                }
            %>
            <div>
                <div>
                    <h2>Add user</h2>
                </div>

                <form method="post">
                    <label>Name:
                        <input type="text" name="name"><br/>
                    </label>
                    <label>Password:
                        <input type="password" name="pass"><br/>
                    </label>
                    <p>
                        <select name="menu" size="1">
                            <option value="first">Первая позиция</option>
                            <option selected="selected" value="second">Вторая позиция</option>
                            <option value="third">Третья позиция</option>
                            <option value="fourth">Четвертая позиция</option>
                        </select>
                    </p>

                    <button type="submit">Submit</button>
                </form>
            </div>
        </div>

        <div>
            <button onclick="location.href='/'">Back to main</button>
        </div>
    </body>
</html>
