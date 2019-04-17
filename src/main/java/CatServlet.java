import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/cats")
public class CatServlet extends HttpServlet {

    Cats dao = DaoFactory.getCatsDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        CatHerder dao = new CatHerder();
        req.setAttribute("cats", dao.getAllCats());
        req.getRequestDispatcher("/catsList.jsp").forward(req,res);
    }
}
