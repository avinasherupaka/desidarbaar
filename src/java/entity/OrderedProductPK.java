/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Avinash
 */
@Embeddable
public class OrderedProductPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "customer_order_id")
    private int customerOrderId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "products_id")
    private int productsId;

    public OrderedProductPK() {
    }

    public OrderedProductPK(int customerOrderId, int productsId) {
        this.customerOrderId = customerOrderId;
        this.productsId = productsId;
    }

    public int getCustomerOrderId() {
        return customerOrderId;
    }

    public void setCustomerOrderId(int customerOrderId) {
        this.customerOrderId = customerOrderId;
    }

    public int getProductsId() {
        return productsId;
    }

    public void setProductsId(int productsId) {
        this.productsId = productsId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) customerOrderId;
        hash += (int) productsId;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderedProductPK)) {
            return false;
        }
        OrderedProductPK other = (OrderedProductPK) object;
        if (this.customerOrderId != other.customerOrderId) {
            return false;
        }
        if (this.productsId != other.productsId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.OrderedProductPK[ customerOrderId=" + customerOrderId + ", productsId=" + productsId + " ]";
    }
    
}
