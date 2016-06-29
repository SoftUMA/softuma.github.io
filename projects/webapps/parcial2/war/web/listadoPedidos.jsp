<%@page import="ejb.PurchaseOrder"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<PurchaseOrder> po = (List<PurchaseOrder>) request.getAttribute("po");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Pedidos</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    </head>
    <body>
        <div class="jumbotron">
            <center><h1>Listado Pedidos</h1></center>
        </div>

        <div class="container" style="margin-top: 1em; margin-bottom: 1em;">
            <table class="table table-hover table-striped">
                <tr>
                    <th>Orden</th>
                    <th>Cliente</th>
                    <th>Producto</th>
                    <th>Qty</th>
                    <th>Precio</th>
                    <th>Venta</th>
                    <th>Env&iacute;o</th>
                    <th>Compa&ntilde;&iacute;a</th>
                    <th></th>
                    <th></th>
                </tr>
                <% for (PurchaseOrder p : po) {%>
                <tr>
                    <td><%= p.getOrderNum()%></td>
                    <td><%= p.getCustomerId().getCustomerId()%></td>
                    <td><%= p.getProductId().getProductId()%></td>
                    <td><%= p.getQuantity()%></td>
                    <td><%= p.getShippingCost()%></td>
                    <td><%= p.getSalesDate()%></td>
                    <td><%= p.getShippingDate()%></td>
                    <td><%= p.getFreightCompany()%></td>
                    <td><a class="btn btn-warning" href="Cliente?id=<%= p.getCustomerId().getCustomerId()%>">Cliente</a></td>
                    <td><a class="btn btn-success" href="BuscarProductosFabricante?id=<%= p.getProductId().getManufacturerId().getManufacturerId()%>">Fabricante</a></td>
                </tr>
                <% }%>
            </table>
        </div>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>
