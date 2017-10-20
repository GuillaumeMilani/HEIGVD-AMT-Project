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
    <table>
      <c:forEach items="${kebabShops}" var="kebabShop">
          <tr>
            <td>${kebabShop.name}</td>
            <td>${kebabShop.street}</td>
            <td>${kebabShop.city}</td>
            <td>${kebabShop.kebabAveragePrice}</td>
          </tr>
      </c:forEach>
    </table>
  </body>
</html>
