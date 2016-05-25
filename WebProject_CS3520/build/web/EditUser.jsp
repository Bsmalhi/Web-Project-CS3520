<%-- 
    Document   : EditUser
    Created on : May 23, 2016, 11:45:32 AM
    Author     : Will
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <title>Register</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
        <style>
            #topContainer{       
                background-image:url("Include/Images/Mountain.jpeg");
                width: 100%;
                height:100vh;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
            h1{
                font-size: 3em;
            }
            .padd{
                margin-left: 40px;
            }
            .marginTop{
                margin-top: 50px;
                margin-bottom: 50px;
            }
            #topRow{
                margin-top: 100px;
                text-align: center;
            }
            .footer{
                margin-top: 25%;
            }
            h1{
                color: white;
            }
            label{
                color: white;
                font-size: 1.4em;
            }
            .footer{
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <a class="navbar-brand">SnapMail</a>
                <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class=""><a href="Chat.jsp">Home</a></li>
                            <li><a href="About.jsp">About</a></li>
                            <li><a href="DownloadApp.jsp">Download The App</a></li>
                            <li class="active"><a href="#Update">Update Account</a></li>
                        </ul>                                                                
                </div>
            </div>
        </div>
        <div class="container" id="topContainer" >
                    <div class="col-lg-6 col-lg-offset-3" id="topRow">
                        <h1 class="marginTop">${user.firstname}, Update your Information here</h1>
      
                    <form action="EditUser" method="post">
                        <br>
                        <label>First Name: </Label>
                        <input type="text" name="firstname" value="${user.firstname}"><br>
                        <label>Last Name: </Label>
                        <input type="text" name="lastname" value="${user.lastname}"><br>
                        <label >Email: </Label>
                        <input class="padd" type="text" name="email" value="${user.email}"><br>
                        <label>Password: </Label>
                        <input type="password" name="password" value="${user.password}"><br>
                        <input type="submit" value="Update">
                    </form>
                        
                        <div class="footer">
                        <%@ include file="Footer.jsp" %>
                        </div>
                    </div>
        </div>
    </body>
</html>
