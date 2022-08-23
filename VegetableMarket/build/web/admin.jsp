
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <c:if test="${sessionScope.LOGIN_USER == null or sessionScope.LOGIN_USER.roleID ne 'AD'}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">

                    <div>
                        <h2>Welcome <b>${sessionScope.LOGIN_USER.fullName}</b></h2>                       
                    </div>
                    <div class="row">
                        <div class = "col-lg-6">
                            <a href="MainController?action=Add"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                        </div>
                        <div class = "col-lg-6">
                            <form action="MainController">
                                <input name="searchByAdmin" type="text" placeholder="What do you need?" value="${listProduct.searchByAdmin}">
                                <button type="submit" name="action" class="site-btn" value="SearchByAdmin">SEARCH</button>
                            </form>
                            <form action="MainController">                                       
                                <input type="submit" value="Logout" name="action" />
                            </form>
                        </div>
                    </div>

                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Category ID</th>
                            <th>Import Date</th>
                            <th>Using Date</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach items="${productList}" var="x">
                        <form action="MainController">
                            <tr>
                                <td><input type = "text" name="productID" value="${x.productID}" readonly=""/></td>
                                <td><input type = "text" name="productName" value="${x.productName}" required=""/></td>
                                <td>                                   
                                    <input type="text" name="image" value="${x.image}" required=""/>
                                    <img src="${x.image}">
                                </td>
                                <td><input type = "text" name="price" value="${x.price}" required=""/></td>
                                <td><input type = "text" name="quantity" value="${x.quantity}" required=""/></td>
                                <td><input type = "text" name="category" value="${x.category}" readonly=""/></td>
                                <td><input type = "text" name="importDate" value="${x.importDate}" readonly=""/></td>
                                <td><input type = "text" name="usingDate" value="${x.usingDate}" readonly=""/></td>
                                <td><input type = "text" name="status" value="${x.status}" required=""/></td>
                                <td>
                                    <input type="submit" name ="action" value="Update">                                 
                                    <a href="MainController?action=Delete&productID=${x.productID}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </form>

                    </c:forEach>

                    </tbody>
                </table>

            </div>
            <a href="login.jsp"><button type="button" class="btn btn-primary">Back to Login Page</button>
                <a href="MainController?action=ShowAllByAdmin&showAllbyAdmin="><button type="button" class="btn btn-primary">Return</button>

                    </div>

                    
                <script src="js/manager.js" type="text/javascript"></script>
                </body>
                </html>