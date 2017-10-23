<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Kebab Shop</title>

    <!-- Bootstrap core CSS -->
    <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="static/css/one-page-wonder.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Kebab Shop</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Accueil
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="masthead">
      <div class="overlay">
        <div class="container">
          <h1 class="display-1 text-white">Kebab Shop</h1>
          <h2 class="display-4 text-white">Find your Kebab</h2>
        </div>
      </div>
    </header>

    <section>
      <div class="container">
        <form method="POST">
          <input type="hidden" name="form" value="add" />
          <input type="hidden" value="${kebabShopToEdit.id}" name="id" />
          <div class="form-group">
            <label>Name</label>
            <input class="form-control" type="text" maxlength="50" placeholder="Name" name="name" value="${kebabShopToEdit.name}" />
          </div>
          <div class="form-group">
            <label>Street Adress</label>
            <input class="form-control" type="text" maxlength="50" placeholder="Street address" name="street" value="${kebabShopToEdit.street}" />
          </div>
          <div class="form-group">
            <label>City</label>
            <input class="form-control" type="text" maxlength="50" placeholder="City" name="city" value="${kebabShopToEdit.city}" />
          </div>
          <div class="form-group">
            <label>Country</label>
            <input class="form-control" type="text" maxlength="50" placeholder="Country" name="country" value="${kebabShopToEdit.country}" />
          </div>
          <div class="form-group">
            <label>Phone</label>
            <input class="form-control" type="tel" maxlength="50" placeholder="Phone" name="phone" value="${kebabShopToEdit.phone}" />
          </div>
          <div class="form-group">
            <label>Average Price</label>
            <input class="form-control" type="number" step="0.01" placeholder="Kebab average price" name="kebab_average_price" value="${kebabShopToEdit.kebabAveragePrice}" />
          </div>
          <input class="btn btn-primary" type="submit" value="Save" />
        </form>
        <hr>
        <form method="POST">
          <input type="hidden" name="form" value="generate" />
          <div class="form-group">
            <label>Nombre d'élément à générer</label>
            <input class='form-control' type="number" placeholder="Numbre d'élément à générer" name="generatorNbr" step="1" min="0" />
          </div>
          <input class="btn btn-primary" type="submit" value="Générer" />
        </form>
      </div>
    </section>
    <hr/>
    <section>
      <div class="container">
        <div class="table-responsive">
          <table class="table">
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
            <c:forEach items="${kebabShops}" var="kebabShop">
                <tr>
                  <td>${kebabShop.name}</td>
                  <td>${kebabShop.street}</td>
                  <td>${kebabShop.city}</td>
                  <td>${kebabShop.country}</td>
                  <td>${kebabShop.phone}</td>
                  <td>${kebabShop.kebabAveragePrice}</td>
                  <td>
                    <a href="?page=${currentPage}&edit=${kebabShop.id}">Edit</a>
                  </td>
                  <td>
                    <a href="?page=${currentPage}&delete=${kebabShop.id}">Delete</a>
                  </td>
                </tr>
            </c:forEach>
          </table>
        </div>
        <div class="align-content-xl-start">
          ${currentPage} / ${nbPages}
          <c:if test="${currentPage > 1}">
              <a href="?page=1">
                <<</a>
              <a href="?page=${currentPage - 1}">
                <</a>
              </c:if>
              <c:if test="${currentPage < nbPages}">
              <a href="?page=${currentPage + 1}">></a>
              <a href="?page=${nbPages}">>></a>
          </c:if>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Author : <i>Guillaume Milani</i> & <i>Maxime Guillod</i></p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="static/vendor/jquery/jquery.min.js"></script>
    <script src="static/vendor/popper/popper.min.js"></script>
    <script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>

  </body>

</html>
