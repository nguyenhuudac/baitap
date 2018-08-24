<%-- 
    Document   : create
    Created on : Aug 24, 2018, 7:09:30 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Page</title>
    </head>
    <body>
        <h1>List</h1>
        <table border="1">
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Price</td>
                <td>Quatity</td>
            </tr>
            <c:forEach items="${ListProduct}" var="u">
                <tr>
                    <td><c:out value="${u.id}"/></td>
                    <td><c:out value="${u.name}"/></td>
                    <td><c:out value="${u.price}"/></td>
                    <td><c:out value="${u.quantity}"/></td>
                </tr>
            </c:forEach>
        </table>
        <h1>Add Product !</h1>
        <form action="NewServlet">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="txtid" placeholder="" required/></td>
                </tr>
                <tr>
                    <td>NAME</td>
                    <td><input type="text" name="txtname" placeholder="" required/></td>
                </tr>
                <tr>
                    <td>PRICE</td>
                    <td><input type="text" name="txtprice" placeholder="" required/></td>
                </tr>
                <tr>
                    <td>QUANTITY</td>
                    <td><input type="text" name="txtquantity" placeholder="" required/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Add"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
