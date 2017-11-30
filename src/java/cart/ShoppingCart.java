/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cart;

import entity.Products;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Avinash
 */
public class ShoppingCart {

    List<ShoppingCartItem> items;
    int numberOfItems;
    double total;

    public ShoppingCart() {
        items = new ArrayList<ShoppingCartItem>();
        numberOfItems = 0;
        total = 0;
    }

    public synchronized void addItem(Products product) {

        boolean newItem = true;

        for (ShoppingCartItem scItem : items) {

            if (scItem.getProduct().getId().equals(product.getId())) {
                newItem = false;
                scItem.incrementQuantity();
            }
        }
        if (newItem) {
            ShoppingCartItem scItem = new ShoppingCartItem(product);
            items.add(scItem);
        }
    }

    public synchronized void update(Products product, String quantity) {

        short qty = -1;

        qty = Short.parseShort(quantity);

        if (qty >= 0) {

            ShoppingCartItem item = null;
            for (ShoppingCartItem scItem : items) {

                if (scItem.getProduct().getId().equals(product.getId())) {

                    if (qty != 0) {

                        scItem.setQuantity(qty);

                    } else {
                        item = scItem;
                        break;
                    }

                }

                if (null != item) {

                    items.remove(item);

                }
            }

        }

    }

    public synchronized List<ShoppingCartItem> getItems() {

        return items;
    }

    public synchronized int getNumberOfItems() {

        numberOfItems = 0;

        for (ShoppingCartItem scItem : items) {

            numberOfItems += scItem.getQuantity();
        }

        return numberOfItems;
    }

    public synchronized double getSubtotal() {

        double amount = 0;

        for (ShoppingCartItem scItem : items) {

            Products product = (Products) scItem.getProduct();

            amount += (scItem.getQuantity() * product.getPrice().doubleValue());

        }
        return amount;
    }

    public synchronized void calculateTotal(String surcharge) {

        double amount = 0;

        // cast surcharge as double
        double s = Double.parseDouble(surcharge);

        amount = this.getSubtotal();
        amount += s;

        total = amount;
    }

    public synchronized double getTotal() {

        return total;
    }

    public synchronized void clear() {
        items.clear();
        numberOfItems = 0;
        total = 0;
    }

}
