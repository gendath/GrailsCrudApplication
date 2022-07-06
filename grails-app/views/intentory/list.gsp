<%--
  Created by IntelliJ IDEA.
  User: perry
  Date: 7/6/2022
  Time: 9:52 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All Products</title>
</head>

<body>

<table border="1">
    <g:each in="${allProducts}" var="p">
        <tr>
            <td>${p.sku}</td>
            <td>${p.name}</td>
            <td>$${p.price}</td>
        </tr>
    </g:each>
</table>
</body>
</html>