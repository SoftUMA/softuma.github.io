package servlets;

import ejb.PurchaseOrder;
import entity.PurchaseOrderFacade;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletBorrarOrden", urlPatterns = {"/BorrarOrden"})
public class ServletBorrarOrden extends HttpServlet {
    @EJB
    private PurchaseOrderFacade pof;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PurchaseOrder po = pof.find(Integer.parseInt(request.getParameter("id")));
        if (po != null) pof.destroy(po);
        
        RequestDispatcher rd = request.getRequestDispatcher("/OrdenesCompra");
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
