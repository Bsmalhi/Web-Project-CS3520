<%-- 
    Document   : Main
    Created on : May 22, 2016, 11:07:39 AM
    Author     : baljotmalhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Snap Chat</title>
       <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
    <style type="text/css">
    .marginTop{
        margin-top: 15px;
        margin-bottom: 15px;
        width: 100vh;
    }
    #topRow{
        margin-top: 100px;
        text-align: center;
        width: 100vh;
    }
    .footer{
        margin-top: 20%;
        text-align: center;
    }
    .navbar-brand{
        font-size: 1.8em;
    }    
    #topContainer{
        width: 100%;
        height: 100vh;
    }
    #textArea{
        width: 400px;
        height: 200px;
    }
    .w{
        width: 100%;
        border: solid black;
    }
    .right{
        margin-left: 500px;
    }
    </style>
  </head>
    <body>
        <div class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                           
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        
                    </button>
                       <a class="navbar-brand">Snap Chat</a> 
                </div>
                <div class="collapse navbar-collapse" >
                        <ul class="nav navbar-nav">
                            <li><a href="Main.jsp">Home</a></li>
                            <li><a href="About.jsp">About</a></li>
                            <li><a href="DownloadApp.jsp">Download App</a></li>
                            <li class="active"><a href="#UserMain">Home Page</a></li>
                            <li class="right"><a href="signOut">Sign Out</a></li>
                        </ul>                                                                
                </div>
            </div>
       </div>
        <div class="container" id="topContainer" >
            <div class="col-lg-6 col-lg-offset-3" id="topRow">
                <h1 class="marginTop"><%@ include file="Header.jsp" %></h1>
                <h3 class="navbar-left">{user.username}, Inbox</h3>
                <c:forEach var="User" items="sessionScope.User.Users">
                <table class=" w">
                    <tr> <td><p>Name</p></td> <td>Message</td> <br></tr>
                    <tr>               
                    <td> ${user.firstname}</td>
                    <td> ${user.message}</td>
                    </tr>    
                </table>
                </c:forEach>
            </div>          
        </div>
                
            <div class="footer">
            <%@ include file="Footer.jsp" %>
            </div>
        
    </body>
</html>
