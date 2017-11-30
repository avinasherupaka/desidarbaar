<%-- 
    Document   : checkout
    Created on : Jan 9, 2015, 3:30:47 PM
    Author     : Avinash
--%>
<body>
    <div id="main">
        <div id="centerColumn">

            <h2 align="left" style="margin-left: 50px">Checkout</h2>
            <p align="left" style="margin-left: 50px">In order to purchase the items in your shopping cart, please provide us with the following information:</p>

            <form action="purchase" method="post">

                <table id="checkoutTable">

                    <tr>
                        <td><label for="name">name:</label></td>
                        <td class="inputField">
                            <input type="text"
                                   size="31"
                                   maxlength="45"
                                   id="name"
                                   name="name"
                                   value="${param.name}">
                        </td>
                    </tr>
                    <tr>
                        <td><label for="email">email:</label></td>
                        <td class="inputField">
                            <input type="text"
                                   size="31"
                                   maxlength="45"
                                   id="email"
                                   name="email"
                                   value="${param.email}">
                        </td>
                    </tr>
                    <tr>
                        <td><label for="phone">phone:</label></td>
                        <td class="inputField">
                            <input type="text"
                                   size="31"
                                   maxlength="16"
                                   id="phone"
                                   name="phone"
                                   value="${param.phone}">
                        </td>
                    </tr>

                    <tr>
                        <td><label for="address">address:</label></td>
                        <td class="inputField">
                            <input type="text"
                                   size="31"
                                   maxlength="45"
                                   id="address"
                                   name="address"
                                   value="${param.address}">
                        </td>
                    </tr>

                    <tr>
                        <td><label for="creditcard">credit card number:</label></td>
                        <td class="inputField">
                            <input type="text"
                                   size="31"
                                   maxlength="19"
                                   id="creditcard"
                                   name="creditcard"
                                   value="${param.creditcard}">
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <input type="submit" value="submit purchase">
                        </td>
                    </tr>
                </table>
            </form>

            <div id="infoBox">

                <ul>
                    <li>Next-day delivery is guaranteed</li>
                    <li>A &dollar; ${initParam.deliverySurcharge}
                        delivery surcharge is applied to all purchase orders</li>
                </ul>

                <div id="priceBox">
                    <table>
                        <tr>
                            <td>subtotal:</td>
                            <td class="checkoutPriceColumn">
                                &dollar; ${cart.subtotal}</td>

                        </tr>

                        <tr>
                            <td>delivery surcharge:</td>
                            <td class="checkoutPriceColumn">
                                &dollar; ${initParam.deliverySurcharge}</td>
                        </tr>
                        <tr>
                            <td class="total">total:</td>
                            <td class="total checkoutPriceColumn">
                                &dollar; ${cart.total}</td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>

    </div>
</body>
