package servlets;

import ejb.Customer;
import ejb.DiscountCode;
import ejb.MicroMarket;
import entity.CustomerFacade;
import entity.DiscountCodeFacade;
import entity.MicroMarketFacade;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletModificarCliente", urlPatterns = {"/ModificarCliente"})
public class ServletModificarCliente extends HttpServlet {
    @EJB
    private CustomerFacade cf;
    @EJB
    private MicroMarketFacade mmf;
    @EJB
    private DiscountCodeFacade dcf;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer c = cf.find(id);
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String addr1 = request.getParameter("addr1");
        String addr2 = request.getParameter("addr2");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String phone = request.getParameter("phone");
        String fax = request.getParameter("fax");
        String creditStr = request.getParameter("credit");
        String zipCode = request.getParameter("zip");
        String discountCode = request.getParameter("discount");
        
        if (c != null) {
            if (name != null) c.setName(name);
            if (email != null) c.setEmail(email);
            if (addr1 != null) c.setAddressline1(addr1);
            if (addr2 != null) c.setAddressline2(addr2);
            if (city != null) c.setCity(city);
            if (state != null) c.setState(state);
            if (phone != null) c.setPhone(phone);
            if (fax != null) c.setFax(fax);
            
            if (creditStr != null) {
                int credit = Integer.parseInt(creditStr);
                c.setCreditLimit(credit);
            }
            
            if (zipCode != null) {
                MicroMarket mm = mmf.find(zipCode);
                if (mm != null) c.setZip(mm);
            }
            
            if (discountCode != null) {
                DiscountCode dc = dcf.find(discountCode);
                if (dc != null) c.setDiscountCode(dc);
            }
            
            cf.modify(c);
        }
        
        RequestDispatcher rd = request.getRequestDispatcher("/ListarPedidos");
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
