package ch.heigvd.web.controllers;

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
import ch.heigvd.model.entities.KebabShop;
import ch.heigvd.services.KebabShopManagerLocal;

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

        // Element edition
        String editParam = request.getParameter("edit");
        if (editParam != null) {
            long id = Long.valueOf(editParam);
            KebabShop kebabShopToEdit = kebabShopManager.findKebabShop(id);
            request.setAttribute("kebabShopToEdit", kebabShopToEdit);
        }

        // Element suppression
        String deleteParam = request.getParameter("delete");
        if (deleteParam != null) {
            long id = Long.valueOf(deleteParam);
            kebabShopManager.deleteKebabShop(id);
        }

        // Pagination
        String pageString = request.getParameter("page");

        int currentPage = pageString == null ? 1 : Integer.valueOf(request.getParameter("page"));
        int nbPages = kebabShopManager.getNbPages();
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("nbPages", nbPages);

        // Shops list
        request.setAttribute("kebabShops", kebabShopManager.findAllKebabShops(currentPage));

        request.getRequestDispatcher("WEB-INF/pages/kebabShop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Check if fields filled

        String formType = request.getParameter("form");

        if (formType == "add") {
            String idField = request.getParameter("id");
            long id = idField == null || "".equals(idField) ? -1 : Long.valueOf(idField);
            String name = request.getParameter("name");
            String street = request.getParameter("street");
            String city = request.getParameter("city");
            String country = request.getParameter("country");
            String phone = request.getParameter("phone");
            float kebabAveragePrice = Float.valueOf(request.getParameter("kebab_average_price"));
            String creationDate = new Date(System.currentTimeMillis()).toString();
            KebabShop kebabShop = new KebabShop(id, name, street, city, country, phone, creationDate, kebabAveragePrice);

            try {
                kebabShopManager.saveKebabShop(kebabShop);
            } catch (Exception ex) {
                Logger.getLogger(KebabShopsServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (formType == "generate") {
            int nbr = new Integer(request.getParameter("generatorNbr"));
            kebabShopManager.generateData(nbr);
        }

        doGet(request, response);
    }
}
