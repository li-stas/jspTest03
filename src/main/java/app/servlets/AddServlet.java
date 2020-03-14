package app.servlets;
import app.entities.User;
import app.model.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * будет обрабатывать запросы, поступившие по адресу /add;
 */
public class AddServlet extends HttpServlet {
    /*
    AddServlet, чтобы выводилось уведомление об успешном добавлении пользователя. Для этого в методе doPost()
    после того, как добавили нового пользователя в модель, можем добавить имя этого пользователя в
    атрибуты объекта req и передать управление обратно во вьюху add.jsp. А в ней уже сделать участок с
    Java-кодом, в котором происходит проверка, есть ли такой атрибут в запросе, и если да — то вывод сообщения
    о том, что пользователь успешно добавлен.
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/add.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("pass");
        System.out.print(req.getParameter("menu"));
        User user = new User(name, password);
        Model model = Model.getInstance();
        model.add(user);

        req.setAttribute("userName", name);
        doGet(req, resp);
    }

    protected void doGet03(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /*
        вытащим из запроса параметры name и pass, которые отправила форма (если вы их в форме назвали по-другому
        — тогда именно те названия и пишете). После этого создадим объект нашего пользователя,
        используя полученные данные. Потом получим объект модели и добавим созданного пользователя в модель.
         */

        String name = req.getParameter("name");
        String password = req.getParameter("pass");
        User user = new User(name, password);
        Model model = Model.getInstance();
        model.add(user);

    }

    protected void doGet02(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /*
        управление из сервлетов в jsp

        - получаем из объекта запроса объект диспетчера запросов, куда передаем адрес jsp странички,
        которой мы хотим передать управление;
        - используя полученный объект — передаем управление в указанную jsp страницу,
        и не забываем вложить туда те объекты запроса и ответа, которые мы получили от Tomcat.
         */

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/add.jsp");
        requestDispatcher.forward(req, resp);

    }
    protected void doGet01(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /*
        метод принимает два обьекта: req (запрос) и resp (ответ). Это те самые объекты, которые
        создаст и наполнит нам Tomcat, когда вызовет соответствующий метод в этом сервлете.
        Для начала давайте сделаем простейшие ответы. Для этого возьмем объект resp и получим из него
        объект PrintWriter-а, которым можно составлять ответы. Ну и при помощи него выведем какую-нибудь простую строку.
         */
        PrintWriter writer = resp.getWriter();
        writer.println("Method GET from AddServlet");
    }
}
