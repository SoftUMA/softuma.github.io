package servlets;

import ejb.Manufacturer;
import ejb.Product;
import entity.ManufacturerFacade;
import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletBuscarProductosFabricante", urlPatterns = {"/BuscarProductosFabricante"})
public class ServletBuscarProductosFabricante extends HttpServlet {
    @EJB
    private ManufacturerFacade mf;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Manufacturer m = mf.find(id);
        List<Product> prods = (List<Product>) m.getProductCollection();
        request.setAttribute("m", m);
        request.setAttribute("prods", prods);
        RequestDispatcher rd = request.getRequestDispatcher("/productos.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
