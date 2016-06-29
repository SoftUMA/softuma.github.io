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

@WebServlet(name = "ServletListarPedidos", urlPatterns = {"/ListarPedidos"})
public class ServletListarPedidos extends HttpServlet {
    @EJB
    private PurchaseOrderFacade pof;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<PurchaseOrder> po = pof.findAll();
        request.setAttribute("po", po);
        RequestDispatcher rd = request.getRequestDispatcher("/listadoPedidos.jsp");
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
        return "Servlet Listar Pedidos";
    }
}
