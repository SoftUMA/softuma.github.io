<%@page import="ejb.PurchaseOrder"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<PurchaseOrder> pos = (List<PurchaseOrder>) request.getAttribute("pos");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ordenes Compra</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    </head>
    <body>
        <div class="jumbotron">
            <center><h1>Neko250 Rules !</h1></center>
        </div>
        <div class="container" style="margin-top: 1em;">
            <table class="table table-hover table-striped">
                <tr>
                    <th>order_num</th>
                    <th>quantity</th>
                    <th>shipping_cost</th>
                    <th>name</th>
                    <th></th>
                </tr>
                <% for (PurchaseOrder po : pos) {%>
                <tr>
                    <td><%= po.getOrderNum()%></td>
                    <td><%= po.getQuantity()%></td>
                    <td><%= po.getShippingCost()%></td>
                    <td><%= po.getCustomerId().getName()%></td>
                    <td><a class="btn btn-danger" href="BorrarOrden?id=<%= po.getOrderNum()%>">delete</a></td>
                </tr>
                <% }%>
            </table>
        </div>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>
