import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/cats/add")
public class AddCatServlet extends HttpServlet {

    Cats dao = DaoFactory.getCatsDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        req.getRequestDispatcher("/addCat.jsp");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String name = req.getParameter("name");
        int age = new Integer(req.getParameter("age"));
        String picture = req.getParameter("picture");

        dao.addCat(new Cat(name, age, picture));
        res.sendRedirect("/cats");
    }
}
