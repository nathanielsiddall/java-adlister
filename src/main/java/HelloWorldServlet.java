import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {

    int counter = 0;


    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        counter++;

        out.println("<form method=\"get\" action=\"/hello\">\n" +
                "    <label for=\"trucks\">What trucks do you prefer</label>\n" +
                "        <select  name=\"trucks\" id=\"trucks\">\n" +
                "            <option value=\"garbage\">ford</option>\n" +
                "            <option value=\"chevy\">chevy</option>\n" +
                "            <option value=\"cummins, cummins, cummins\">dode</option>\n" +
                "            <option value=\"the hilux was gud do\">toyota</option>\n" +
                "        </select>\n" +
                "    <input type=\"submit\" name=\"submit\" value=\"submit\">\n" +
                "</form>" +
                "counter is " + counter);

        String submit = req.getParameter("submit");
       String trucks = req.getParameter("trucks");

       if (submit.equals("submit")){
           out.print("you like " + trucks);
       }
    }
}
