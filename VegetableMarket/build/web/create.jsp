<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.shopping.ProductError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Page</title>
    </head>
    <body>
        <h1>Create new product:</h1>
        <table>
            <tbody>
            <form action="MainController">
                <tr>
                    <td>Product ID</td>
                    <td><input type="text" name="productID" required=""/></td>
                    <td>${requestScope.PRODUCT_ERROR.productIDError}</td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td><input type="text" name="productName" required=""/></td>
                    <td>${requestScope.PRODUCT_ERROR.productNameError}</td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td><input type="text" name="image" required=""/></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="price" required=""/></td>
                    <td>${requestScope.PRODUCT_ERROR.priceError}</td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input type="text" name="quantity" required=""/></td>
                    <td>${requestScope.PRODUCT_ERROR.quantityError}</td>
                </tr>
                <tr>
                    <td>Category ID</td>
                                        <td>
                        <select name ="category">
                                <option value="C1">Water Spinach</option>
                                <option value="C2">Vegetable Spinach</option>
                                <option value="C3">Carrot</option>
                                <option value="C4">Fruits</option>                               
                        </select>
                    </td> 
                    
                </tr>
                <tr>
                    <td>Import Date</td>
                    <td><input type="date" name="importDate" required=""/></td>
                </tr>
                <tr>
                    <td>Using Date</td>
                    <td><input type="date" name="usingDate" required=""/></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="action" value="Add"/>
                        <input type="reset" value="Reset"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="MainController?action=ShowAllByAdmin&showAllByAdmin=">BACK</a>
                    </td>
                </tr>
            </form>
        </tbody>
    </table>
</body>
</html>
