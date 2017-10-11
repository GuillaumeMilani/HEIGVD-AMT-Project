/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.entities.KebabShop;
import services.KebabShopManager;

/**
 *
 * @author lognaume
 */
@WebServlet(name = "KebabShopsServlet", urlPatterns = {"/kebabShops"})
public class KebabShopsServlet extends HttpServlet {
    
    
    KebabShopManager kebabShopManager = new KebabShopManager();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        KebabShop kebabShop = kebabShopManager.getRandomKebabShop();
        request.setAttribute("kebabShop", kebabShop);
        request.getRequestDispatcher("WEB-INF/pages/kebabShop.jsp").forward(request, response);
    }
}
