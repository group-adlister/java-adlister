import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/count")
public class CountServlet extends HttpServlet {

    int hitCount;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter output = response.getWriter();

        hitCount++;
        output.println("<h3> Number of hits: " + hitCount + "</h3>");

    }

}
