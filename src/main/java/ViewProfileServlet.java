import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String location = "profile";

        request.setAttribute("location", location);

        HttpSession session = request.getSession();
        String uname = (String) session.getAttribute("user");
        String welcome = "howdy there " + uname;

        if (uname != null) {
            request.setAttribute("welcome", welcome);
            request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);


        }else {
            response.sendRedirect("/login");
        }
    }
}
