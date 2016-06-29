<%@page import="ejb.Product"%>
<%@page import="java.util.List"%>
<%@page import="ejb.Manufacturer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Manufacturer m = (Manufacturer) request.getAttribute("m");
    List<Product> prods = (List<Product>) request.getAttribute("prods");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fabricante</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    </head>
    <body>
        <div class="jumbotron">
            <center><h1>Fabricante - <%= m.getName()%></h1></center>
        </div>

        <div class="container" style="margin-top: 1em; margin-bottom: 1em;">
            <table class="table table-hover table-striped">
                <tr>
                    <th>ID</th>
                    <th>Fabricante</th>
                    <th>C&oacute;digo</th>
                    <th>Precio</th>
                    <th>Qty</th>
                    <th>Markup</th>
                    <th>Disponible</th>
                    <th>Descripci&oacute;n</th>
                </tr>
                <% for (Product p : prods) {%>
                <tr>
                    <td><%= p.getProductId()%></td>
                    <td><%= p.getManufacturerId().getManufacturerId()%></td>
                    <td><%= p.getProductCode().getProdCode()%></td>
                    <td><%= p.getPurchaseCost()%></td>
                    <td><%= p.getQuantityOnHand()%></td>
                    <td><%= p.getMarkup()%></td>
                    <td><%= p.getAvailable()%></td>
                    <td><%= p.getDescription()%></td>
                </tr>
                <% }%>
            </table>
        </div>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>
