package servlets;

import ejb.PurchaseOrder;
import entity.PurchaseOrderFacade;
import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletOrdenesCompra", urlPatterns = {"/OrdenesCompra"})
public class ServletOrdenesCompra extends HttpServlet {
    @EJB
    private PurchaseOrderFacade pof;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<PurchaseOrder> pos = pof.findByIdLTE(10);
        request.setAttribute("pos", pos);
        RequestDispatcher rd = request.getRequestDispatcher("/ordenes.jsp");
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
        return "Servlet Ordenes Compra";
    }
}
