/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cart;

import entity.Products;

/**
 *
 * @author Avinash
 */
public class ShoppingCartItem {
    
    Products product;
    short quantity;

    public ShoppingCartItem(Products product) {
        this.product = product;
        quantity = 1;
    }

    public Products getProduct() {
        return product;
    }

    public short getQuantity() {
        return quantity;
    }

    public void setQuantity(short quantity) {
        this.quantity = quantity;
    }

   
     public void incrementQuantity() {
        quantity++;
    }

    public void decrementQuantity() {
        quantity--;
    }

    public double getTotal() {
        double amount = 0;
        amount = (this.getQuantity() * product.getPrice().doubleValue());
        return amount;
    }
    
    
}
