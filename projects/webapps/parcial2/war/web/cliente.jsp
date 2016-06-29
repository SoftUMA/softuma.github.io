<%@page import="ejb.DiscountCode"%>
<%@page import="ejb.MicroMarket"%>
<%@page import="java.util.List"%>
<%@page import="ejb.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Customer c = (Customer) request.getAttribute("c");
    List<MicroMarket> mm = (List<MicroMarket>) request.getAttribute("mm");
    List<DiscountCode> dc = (List<DiscountCode>) request.getAttribute("dc");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    </head>
    <body>
        <div class="jumbotron">
            <center><h1>Cliente: <%= c.getName()%></h1></center>
        </div>

        <div class="container" style="margin-top: 1em; margin-bottom: 1em;">
            <form action="ModificarCliente">
                <input type="hidden" value="<%= c.getCustomerId()%>" name="id">
                <div class="form-group">
                    <label for="nameinput">Nombre</label>
                    <input type="text" class="form-control" id="nameinput" placeholder="<%= c.getName()%>" value="<%= c.getName()%>" name="name">
                </div>
                <div class="form-group">
                    <label for="emailinput">Email</label>
                    <input type="text" class="form-control" id="emailinput" placeholder="<%= c.getEmail()%>" value="<%= c.getEmail()%>" name="email">
                </div>
                <div class="form-group">
                    <label for="addr1input">Direcci&oacute;n 1</label>
                    <input type="text" class="form-control" id="addr1input" placeholder="<%= c.getAddressline1()%>" value="<%= c.getAddressline1()%>" name="addr1">
                </div>
                <div class="form-group">
                    <label for="addr2input">Direcci&oacute;n 2</label>
                    <input type="text" class="form-control" id="addr2input" placeholder="<%= c.getAddressline2()%>" value="<%= c.getAddressline2()%>" name="addr2">
                </div>
                <div class="form-group">
                    <label for="cityinput">Ciudad</label>
                    <input type="text" class="form-control" id="cityinput" placeholder="<%= c.getCity()%>" value="<%= c.getCity()%>" name="city">
                </div>
                <div class="form-group">
                    <label for="stateinput">Estado</label>
                    <input type="text" class="form-control" id="stateinput" placeholder="<%= c.getState()%>" value="<%= c.getState()%>" name="state">
                </div>
                <div class="form-group">
                    <label for="phoneinput">Tel&eacute;fono</label>
                    <input type="text" class="form-control" id="phoneinput" placeholder="<%= c.getPhone()%>" value="<%= c.getPhone()%>" name="phone">
                </div>
                <div class="form-group">
                    <label for="faxinput">Fax</label>
                    <input type="text" class="form-control" id="faxinput" placeholder="<%= c.getFax()%>" value="<%= c.getFax()%>" name="fax">
                </div>
                <div class="form-group">
                    <label for="creditinput">L&iacute;mite de Cr&eacute;dito</label>
                    <input type="text" class="form-control" id="creditinput" placeholder="<%= c.getCreditLimit()%>" value="<%= c.getCreditLimit()%>" name="credit">
                </div>
                <div class="form-group">
                    <label for="zipinput">Zip</label>
                    <select id="zipinput" name="zip">
                        <% for (MicroMarket m : mm) {%>
                        <option value="<%= m.getZipCode()%>" <% if (m.getZipCode().equals(c.getZip().getZipCode())) { %>selected<% }%>><%= m.getZipCode()%></option>
                        <% }%>
                    </select>
                </div>
                <div class="form-group">
                    <label for="discountinput">C&oacute;digo de Descuento</label>
                    <select id="discountinput" name="discount">
                        <% for (DiscountCode d : dc) {%>
                        <option value="<%= d.getDiscountCode()%>" <% if (d.getDiscountCode().equals(c.getDiscountCode().getDiscountCode())) { %>selected<% }%>><%= d.getDiscountCode()%></option>
                        <% }%>
                    </select>
                </div>
                <button type="submit" class="btn btn-danger">Modificar</button>
            </form>
        </div>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </body>
</html>
