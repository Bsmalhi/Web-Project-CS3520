<%-- 
    Document   : About
    Created on : May 19, 2016, 11:27:01 PM
    Author     : baljotmalhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SnapMail</title>
       <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
    <style type="text/css">
    .navbar-brand{
        font-size: 1.8em;
    }
    #topRow{
        margin-top: 50px;
        text-align: center;
    }
    #topContainer{
        background-image: url("Include/Images/fall.jpeg");
        width: 100%;
        height: 100vh;
    }
    .marginTop{
                margin-top: 50px;
                margin-bottom: 50px;
    }          
    .footer{
        margin-top: 40%;
        color: white;
    }
    p{
        font-size: 1.2em;
        color: white;
    }
    h1{
        color: white;
        font-style: italic;
        font-weight: bold;
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
                       <a class="navbar-brand">SnapMail</a> 
                 </div>
                <div class="collapse navbar-collapse" >
                        <ul class="nav navbar-nav">
                            <li><a href="Welcome.jsp">Home</a></li>
                            <li class="active"><a href="About.jsp">About</a></li>
                            <li><a href="DownloadApp.jsp">Download App</a></li>
                        </ul>                                                                
                </div>
            </div>
        </div>
                <div class="container contentContainer" id="topContainer">
                    <div class="col-md-6 col-md-offset-3" id="topRow">
                        <h1 class="marginTop"> About Developers of SnapMail</h1>
                        <p>Thanks for visiting our Web Application. </p>
                        <p>This Site is a Collective effort of 2 Computer Science Students at CSUEB </p>
                        <p>Wei Su and Baljot Malhi both worked out to make SnapMail project a reality. <p>
                        <p>We would like to thank our Professor for guiding us through the making of this SnapMail Web App</p>
                        <p>We would like to work further to develop and make SnapMail one of the best Web Application.</p>
                        
                        <div class="footer">
                        <%@ include file="Footer.jsp" %>
                        </div>
                    </div>
                    
                </div>
    </body>
</html>
