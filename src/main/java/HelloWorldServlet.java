import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.*;


@WebServlet(urlPatterns = "/hello-world")
public class HelloWorldServlet extends HttpServlet {

    int counter = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        counter++;
        String name = request.getParameter("name");
        response.setContentType("text/html");
//        PrintWriter output = response.getWriter();
//        output.println(
//                "<h1>Hello " + name + "!</h1>" +
//                "<form method=\"POST\" action=\"/hello-world\">\n" +
//                "<label for=\"email\">Email:</label>\n" +
//                "<input id=\"email\" name=\"email\" placeholder=\"Enter your email address\" />\n" +
//                "</form>");

        request.setAttribute("name", name);
        request.setAttribute("counter", counter);

        request.getRequestDispatcher("/hello.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        PrintWriter output = response.getWriter();
        output.println("This is your email, " + email + "");
    }


}
