<%-- 
    Document   : Main_Will
    Created on : May 22, 2016, 4:13:37 PM
    Author     : Will
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <input type="submit" value="Save">
                <input type="submit" value="Send"><p><i>Message: ${message}</i><p>
            </form>
        </div>
        
        <br>
            
        <div>
            <h2>Your Inbox:</h2>
            <table>
                <tr><th>From<th><th>Time</th><th>Message</th></tr>
                <c:forEach items="${message.message}" var="email">
                   <tr><td><c:out value="${message}"/><td><tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
