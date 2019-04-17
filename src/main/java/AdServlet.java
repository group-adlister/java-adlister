import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.DataInput;
import java.io.IOException;
import java.util.List;

@WebServlet( urlPatterns = "/ads")

public class AdServlet  extends HttpServlet {

    Ads dao = DaoFactory.getAdsDao();

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

        List<Ad> ads = dao.all();
        req.setAttribute("ads",ads);
        req.getRequestDispatcher("/ads/index.jsp").forward(req, res);
    }


//    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
//
//        long userId = new Long(req.getParameter("userId"));
//        String title = req.getParameter("title");
//        String description = req.getParameter("description");
//
//        ListAdsDao listDao = new ListAdsDao();
//
//
//        listDao.all();
//        res.sendRedirect("/ads");
//
//
//    }


}
