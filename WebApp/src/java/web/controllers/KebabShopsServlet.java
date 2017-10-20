package web.controllers;

import java.io.IOException;
import java.sql.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.entities.KebabShop;
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
        System.out.println(request.getServletPath());
        request.setAttribute("kebabShops", kebabShopManager.findAllKebabShops());
        request.getRequestDispatcher("WEB-INF/pages/kebabShop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        String phone = request.getParameter("phone");
        float kebabAveragePrice = Float.valueOf(request.getParameter("kebab_average_price"));
        String creationDate = new Date(System.currentTimeMillis()).toString();
        KebabShop kebabShop = new KebabShop(name, street, city, country, phone, creationDate, kebabAveragePrice);
        
        try {
            kebabShopManager.addKebabShop(kebabShop);
        } catch (Exception ex) {
            Logger.getLogger(KebabShopsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        doGet(request, response);
    }
}
