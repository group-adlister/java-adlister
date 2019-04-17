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


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        response.setContentType("text/html");
        PrintWriter output = response.getWriter();
        output.println("<h1>Hello " + name + "!</h1>");
        output.println(
                "<form method=\"POST\" action=\"/hello-world\">\n" +
                "<label for=\"email\">Email:</label>\n" +
                "<input id=\"email\" name=\"email\" placeholder=\"Enter your email address\" />\n" +
                "</form>");

        request.setAttribute("name", name);
        request.getRequestDispatcher("/hello.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        PrintWriter output = response.getWriter();
        output.println("This is your email, " + email + "");
    }


}
