<%--
  Created by IntelliJ IDEA.
  User: Pro
  Date: 05.03.2020
  Time: 20:15
  To change this template use File | Settings | File Templates.

  add.jsp — страничка для добавления

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Добавление результатов</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>

    <body>
        <div>
            <div class="w3-container w3-blue-grey w3-opacity w3-right-align">
            <h1>Онлайн-калькулятор</h1>
        </div>

        <div>
            <%
                if (request.getAttribute("userName") != null) {
                    out.println("<div class=\"w3-panel w3-green w3-display-container w3-card-4 w3-round\">\n" +
                            "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                            "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-green w3-hover-border-grey\">×</span>\n" +
                            "   <h5>Результат '" + request.getAttribute("userName") + "' добавлен!</h5>\n" +
                            "</div>");
                }
            %>
            <div class="w3-card-4">
                <div class="w3-container w3-center w3-green">
                    <h2>Добавить вычисление (десятичный разделитель .(точка))</h2>
                </div>

                <form method="post" class="w3-selection w3-light-grey w3-padding">
                    <label>Первое значение:
                        <input type="one" name="name" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br/>
                    </label>
                    <label>Второе значение:
                        <input type="two" name="pass" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br/>
                    </label>
                    <p>
                        <%--<select name="menu" size="1" style="background: #9fb1b9!important; color: #ffffff!important;  border-radius: 06px;  padding: 6px 10px;    border: none!important">--%>
                        <select name="menu" size="1" class="w3-input w3-animate-input w3-border w3-round-large">
                            <option selected="selected" value="1">Сложить</option>
                            <option value="2">Вычесть</option>
                            <option value="3">Умножить</option>
                            <option value="4">Разделить</option>
                        </select>
                    </p>

                    <button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom">Выполнить</button>
                </form>
            </div>
        </div>

        <div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
            <button class="w3-btn w3-round-large" onclick="location.href='/'">Назад на главную</button>
        </div>
    </body>
</html>
