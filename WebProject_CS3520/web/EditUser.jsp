<%-- 
    Document   : EditUser
    Created on : May 23, 2016, 11:45:32 AM
    Author     : Will
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User</title>
    </head>
    <body>
        <h1>Edit Your Information Below</h1>
        <form action="EditUser" method="post">
            <label>Current User: ${user.username}</label><br>
            <label>First Name: </Label>
            <input type="text" name="firstname" value="${user.firstname}"><br>
            <label>Last Name: </Label>
            <input type="text" name="lastname" value="${user.lastname}"><br>
            <label>Email: </Label>
            <input type="text" name="email" value="${user.email}"><br>
            <label>Password: </Label>
            <input type="password" name="password" value="${user.password}"><br>
            <input type="submit" value="Update">
        </form>
    </body>
</html>
