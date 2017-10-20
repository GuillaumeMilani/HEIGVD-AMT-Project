<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Kebab shops manager</h1>
        <form method="POST">
            <input type="text" maxlength="50" placeholder="Name" name="name" />
            <input type="text" maxlength="50" placeholder="Street address" name="street" />
            <input type="text" maxlength="50" placeholder="City" name="city" />
            <input type="text" maxlength="50" placeholder="Country" name="country" />
            <input type="tel" maxlength="50" placeholder="Phone" name="phone" />
            <input type="number" step ="0.01" placeholder="Kebab average price" name="kebab_average_price" />
            <input type="submit" value="Create" />
        </form>
        <table>
            <c:forEach items="${kebabShops}" var="kebabShop">
                <tr>
                    <td>        <input type="hidden" value="${kebabShop.id}"/>${kebabShop.name}</td>
                    <td>${kebabShop.street}</td>
                    <td>${kebabShop.city}</td>
                    <td>${kebabShop.kebabAveragePrice}</td>
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
