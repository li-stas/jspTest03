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
      <%--page "Add new user"--%>
      <form method="post">
          <label>Name:
              <input type="text" name="name"><br />
          </label>

          <label>Password:
              <input type="password" name="pass"><br />
          </label>
          <button type="submit">Submit</button>
      </form>
</body>
</html>
