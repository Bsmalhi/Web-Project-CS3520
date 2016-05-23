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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Snap Chat</h1>
        <h3>Current User: ${user.username}</h3>
        <br>
        
        <div>
            <h2>Send Mail</h2>
            <form action="Mail" method="post">
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
            <button>Delete the last message</button>
            <table border="1" style="margin:0.5em; width:100%">
                <tr>
                    <th style="width: 10em">From</th>
                    <th style="width: 8em">Time</th>
                    <th>Message</th>
                </tr>
                <c:forEach items="${user.message}" var="m">
                   <tr>
                       <td><c:out value="${m.fromuser}"/></td>
                       <td><c:out value="${m.year}-${m.month}-${m.day} ${m.hour}:${m.minute}:${m.second}"/></td>
                       <td><c:out value="${m.message}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
