package servlets;

import ejb.Customer;
import ejb.DiscountCode;
import ejb.MicroMarket;
import entity.CustomerFacade;
import entity.DiscountCodeFacade;
import entity.MicroMarketFacade;
import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletCliente", urlPatterns = {"/Cliente"})
public class ServletCliente extends HttpServlet {
    @EJB
    private CustomerFacade cf;
    @EJB
    private MicroMarketFacade mmf;
    @EJB
    private DiscountCodeFacade dcf;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer c = cf.find(id);
        request.setAttribute("c", c);
        
        List<MicroMarket> mm = mmf.findAll();
        request.setAttribute("mm", mm);
        
        List<DiscountCode> dc = dcf.findAll();
        request.setAttribute("dc", dc);
        
        RequestDispatcher rd = request.getRequestDispatcher("/cliente.jsp");
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
