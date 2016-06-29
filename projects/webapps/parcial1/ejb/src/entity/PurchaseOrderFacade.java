/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import ejb.PurchaseOrder;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author neko250
 */
@Stateless
public class PurchaseOrderFacade extends AbstractFacade<PurchaseOrder> {

    @PersistenceContext(unitName = "parcial1-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PurchaseOrderFacade() {
        super(PurchaseOrder.class);
    }
    
    public List<PurchaseOrder> findByIdLTE(int customerId) {
        return em.createNamedQuery("PurchaseOrder.findByCustomerIdLTE").setParameter("customerId", customerId).getResultList();
    }
    
    public void destroy(PurchaseOrder entity) {
        remove(entity);
        em.flush();
    }
    
}
