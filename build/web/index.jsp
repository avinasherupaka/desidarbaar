<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Jan 9, 2015, 3:30:17 PM
    Author     : Avinash
--%>


<body>
    <div id="main">

        <div id="indexLeftColumn">
            <div style="float: left; width: 220px;">
                <h2 style="font-family: Arial; font-size: 28px; color: #226a05; letter-spacing: -2px;">Our mission</h2>
            </div>
            <div align="justify" style="float: left; clear: both; width: 290px; margin-top: 10px; margin-left: 40px">
                <p style="margin-top: -10px;">At Desi Darbaar, our mission is to bring the best ingredients from around the world, right to your doorstep. With a wide variety of authentic regional ingredients, we strive to reconnect people with the familiar flavor of India.</p>
            </div><br style="clear: both;" />
        </div>

        <div id="indexRightColumn">

            <c:forEach var="category" items="${categories}">
                <div class="categoryBox">
                    <a href="category?${category.id}">
                        <span class="categoryLabelText">${category.name}</span>
                        <img src="${initParam.categoryImagePath}${category.name}.jpg"
                             alt="${category.name}">
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
