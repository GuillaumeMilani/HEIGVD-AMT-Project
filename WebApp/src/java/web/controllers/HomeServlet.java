package web.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Guillaume Milani & Maxime Guillod
 */
@WebServlet(name="HomeServlet", urlPatterns="/pages/home")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
     * This is a place to experiment. From the JSP page, it is possible to retrieve models from different
     * scopes (request, session, application). The developer can either explicitely tell which scope should be
     * used for the lookup, or it can use a syntax to find the model in any of the scopes (from the most specific
     * to the most general). The following code shows that it is possible to override a session-scoped model with
     * a request-scoped model (it shows that it can be risky to use the implicit syntax...).
    
      request.setAttribute("principal", "Overriden principal value");
     
     * see https://docs.oracle.com/javaee/6/tutorial/doc/bnahu.html#bnahw
         */
        request.setAttribute("pageTitle", "Welcome");
        request.getRequestDispatcher("/WEB-INF/pages/home.jsp").forward(request, response);
    }
}
