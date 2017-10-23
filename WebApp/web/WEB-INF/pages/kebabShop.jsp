<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">        
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Kebab shops manager</h1>
        <form method="POST">
            <input type="hidden" name="form" value="add" />
            <input type="hidden" value="${kebabShopToEdit.id}" name="id" />
            <input type="text" maxlength="50" placeholder="Name" name="name" value="${kebabShopToEdit.name}" />
            <input type="text" maxlength="50" placeholder="Street address" name="street" value="${kebabShopToEdit.street}" />
            <input type="text" maxlength="50" placeholder="City" name="city" value="${kebabShopToEdit.city}" />
            <input type="text" maxlength="50" placeholder="Country" name="country" value="${kebabShopToEdit.country}" />
            <input type="tel" maxlength="50" placeholder="Phone" name="phone" value="${kebabShopToEdit.phone}" />
            <input type="number" step ="0.01" placeholder="Kebab average price" name="kebab_average_price" value="${kebabShopToEdit.kebabAveragePrice}" />
            <input type="submit" value="Save" />
        </form>
        <hr>
          <form method="POST">
            <input type="hidden" name="form" value="generate" />
            <input type="number" placeholder="Numbre d'élément à générer" name="generatorNbr" step="1" min="0" />
            <input type="submit" value="Générer" />
        </form>
        <hr>
        <table class="steelBlueCols">
            <c:forEach items="${kebabShops}" var="kebabShop">
                <tr>
                    <th>Name</th>
                    <th>Street</th>
                    <th>City</th>
                    <th>Country</th>
                    <th>Phone</th>
                    <th>AveragePrice</th>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <td>${kebabShop.name}</td>
                    <td>${kebabShop.street}</td>
                    <td>${kebabShop.city}</td>
                    <td>${kebabShop.country}</td>
                    <td>${kebabShop.phone}</td>
                    <td>${kebabShop.kebabAveragePrice}</td>
                    <td><a href="?page=${currentPage}&edit=${kebabShop.id}">Edit</a></td>
                    <td><a href="?page=${currentPage}&delete=${kebabShop.id}">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
        ${currentPage} / ${nbPages}

        <c:if test="${currentPage > 1}">
            <a href="?page=1"><<</a>
            <a href="?page=${currentPage - 1}"><</a>
        </c:if>
        <c:if test="${currentPage < nbPages}">
            <a href="?page=${currentPage + 1}">></a>
            <a href="?page=${nbPages}">>></a>
        </c:if>
    </body>
</html>
