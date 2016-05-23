<%-- 
    Document   : Main_Will
    Created on : May 22, 2016, 4:13:37 PM
    Author     : Will
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--This is extremely important!!!!!!-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat</title>
    </head>
    <body>
        <h1>Snap Chat</h1>
        <h3>Username: ${user.username}</h3>
        <h3>Email: ${user.email}</h3>
        <h3>First Name: ${user.firstname}</h3>
        <h3>Last Name: ${user.lastname}</h3>
        <a href ="EditUser.jsp">Edit My Info</a>
        
        <br><br>
        
        <div>
            <h2>Send Mail</h2>
            <form action="Chat" method="post">
                <input type="hidden" name="action" value="SEND">
                <label>To:</label><br>
                <input type="text" name="username" required><br>
                <label>Message:</label><br>
                <input type="text" name="message" required><br>
                <input type="submit" value="Send"><p><i>${message}</i><p>
            </form>
        </div>
        
        <br>
            
        <div>
            <h2>Your Inbox:</h2>
            <!--
            <form action="Chat" method="post">
                <input type="hidden" name="action" value="DELETE">
                <label>Enter the number of message you want to delete:</label>
                <input type=number name="id" required>
                <input type="submit" value="Delete">
            </form>
            -->
            <table border="2" style="margin:0.5em; width:100%">
                <tr>
                    <th style="width: 3em"></th>
                    <th style="width: 10em">From</th>
                    <th style="width: 8em">Time</th>
                    <th style="width: 10em">Message</th>
                    <th style="width: 4em">Action</th>
                </tr>
                <c:forEach items="${user.message}" var="m">
                   <tr>
                       <td><c:out value="${m.number}"/></td>
                       <td><c:out value="${m.fromuser}"/></td>
                       <td><c:out value="${m.year}-${m.month}-${m.day} ${m.hour}:${m.minute}:${m.second}"/></td>
                       <td><c:out value="${m.message}"/></td>
                       <td>
                            <form action="Chat" method="post">
                                <input type="hidden" name="action" value="DELETE">
                                <input type="hidden" name="id" value="${m.number}">
                                <input type="submit" value="Delete">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
