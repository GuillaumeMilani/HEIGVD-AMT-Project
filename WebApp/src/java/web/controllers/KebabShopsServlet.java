package web.controllers;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import services.KebabShopManagerLocal;

/**
 *
 * @author Guillaume Milani & Maxime Guillod
 */
@WebServlet(name = "KebabShopsServlet", urlPatterns = {"/kebabShops"})
public class KebabShopsServlet extends HttpServlet {

    @EJB
    private KebabShopManagerLocal kebabShopManager;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("kebabShops", kebabShopManager.findAllKebabShops());
        request.getRequestDispatcher("WEB-INF/pages/kebabShop.jsp").forward(request, response);
    }
}
