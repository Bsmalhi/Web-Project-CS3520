<%-- 
    Document   : AdminMain
    Created on : May 22, 2016, 10:23:54 AM
    Author     : baljotmalhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
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
    .marginTop{
        margin-top: 50px;
        margin-bottom: 50px;
    }
    #topRow{
        margin-top: 100px;
        text-align: center;
    }
    .footer{
        margin-top: 40%;
    }
    .navbar-brand{
        font-size: 1.8em;
    }    
    #topContainer{
        background-color: #E9EBEE;
        width: 100%;
        height: 100vh;
    }
    #textArea{
        width: 400px;
        height: 200px;
    }
    .textarea{
        width: 350px;
        height: 100px;
        font-size: 1.1em;
    }
    h1{
        font-style: italic;
        font-weight: bold;
    }
    label{
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
                       <a class="navbar-brand">Snap Chat</a> 
                </div>
                <div class="collapse navbar-collapse" >
                        <ul class="nav navbar-nav">
                            <li><a href="Welcome.jsp">Home</a></li>
                            <li><a href="About.jsp">About</a></li>
                            <li><a href="DownloadApp.jsp">Download App</a></li>
                            <li class="active"><a href="#adminMain">Admin Page</a></li>
                        </ul>                                                                
                </div>
            </div>
       </div>
        <div class="container" id="topContainer" >
            <div class="col-lg-6 col-lg-offset-3" id="topRow">
                <h1 class="marginTop">Welcome to Admin Page</h1>
                <h2 class="lead">Admin can send email to all the Users in this App </h2>
                <form action="SendEmail" method="post" class="navbar-form navbar-center"/>
                <div class="form-group">
                    <label> Send Email:</label><br>
                    <textarea class="textarea" type="text" name="emailMessage" class="form-control"></textarea><br>
                </div>
                
                    <label ></label>
                    <input type="submit" value="Send" class="btn btn-success"/>   
                </form>
                
                
                <div class="footer">
                <%@ include file="Footer.jsp" %>
                </div>
             </div>
           
        </div>
        
        
    </body>
</html>
