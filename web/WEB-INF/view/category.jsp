<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : index
    Created on : Jan 9, 2015, 3:30:17 PM
    Author     : Avinash
--%>


<body>

    <div id="main">

        <%-- <sql:query var="categories" dataSource="jdbc/desidarbaar">
             SELECT * FROM category
         </sql:query>

        <sql:query var="selectedCategory" dataSource="jdbc/desidarbaar">
            SELECT name FROM category WHERE id = ?
            <sql:param value="${pageContext.request.queryString}"/>
        </sql:query>

        <sql:query var="categoryProducts" dataSource="jdbc/desidarbaar">
            SELECT * FROM products WHERE category_id = ?
            <sql:param value="${pageContext.request.queryString}"/>
        </sql:query> --%>

        <div id="categoryLeftColumn">

            <c:forEach var="category" items="${categories}">

                <c:choose>

                    <c:when test="${category.name == selectedCategory.name}">

                        <div class="categoryButton" id="selectedCategory">
                            <span class="categoryLabelText">${category.name}</span>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <a href="category?${category.id}" class="categoryButton">
                            <div class="categoryLabelText">
                                ${category.name}
                            </div>
                        </a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>

        <div id="#categoryRightColumn">

            <p id="categoryTitle">${selectedCategory.name}</p>

            <table id="productTable">

                <c:forEach var="product" items="${categoryProducts}" varStatus="iter">

                    <tr class="${((iter.index % 2) == 0) ? 'lightBlue' : 'white'}">

                        <td>
                            <img src="${initParam.productImagePath}${product.name}.png"
                                 alt="${product.name}">
                        </td>

                        <td>
                            ${product.name}
                            <br>
                            <span class="smallText">${product.description}</span>
                        </td>

                        <td>
                            &dollar; ${product.price} / unit
                        </td>

                        <td>
                            <form action="<c:url value='addToCart'/>" method="post">
                                <input type="hidden"
                                       name="productId"
                                       value="${product.id}">
                                <input type="submit"
                                       value="add to cart">
                            </form>
                        </td>     
                    </tr>
                </c:forEach>
            </table>
        </div>
</body>