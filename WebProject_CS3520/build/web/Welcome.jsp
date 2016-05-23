<%-- 
    Document   : Welcome
    Created on : May 15, 2016, 3:31:06 PM
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
    <title>Snap Chat</title>
       <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
    <style type="text/css">

    .navbar-brand{
        font-size: 1.8em;
    }
    #topContainer{
        
        background-image:url("Include/Images/forest.jpeg");
        width: 100%;
        background-size: cover;
    }
    #topRow{
        margin-top: 100px;
        text-align: center;
    }
    #topRow h1{
        font-size: 300%;
    }
    .marginTop{
        margin-top: 30px;
    }
    .center
    {
        text-align: center;
    }
    .title{
        margin-top: 100px;
        font-size: 300%;
    }
    #footer{
        background-color: #B4D1F8;
        margin-top: 50px;
        width: auto;
    }
    .marginBottom{
        margin-bottom: 30px;
    }
    .appImage{
        width: 250px;
    }
    .right{
        margin-top: 5px;
    }
    .up{
        margin-top: -45px;
    }
    .centerTitle{
        
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
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#home">Home</a></li>
                            <li><a href="About.jsp">About</a></li>
                            <li><a href="DownloadApp.jsp">Download App</a></li>
                        </ul>                                                                
                    </div>
                <div class="up">
                        <form action="SignIn" method="post" class="navbar-form navbar-right" >                 
                            <div class="form-group">
                                <input type="text" name="username" placeholder="Username" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" placeholder="Password" class="form-control">
                            </div>
                            <button type="submit" class="btn btn-success">Login</button>
                            <p class="right"><b>Not registered? <a href ="Register.jsp">Register here</a></b> Or <b>Admin Login?<a href ="Admin.jsp">Admin SignIn</a></b></p>
                        </form>
                    <p><i>${message}</i><p>
                    <p
                </div>
            </div>
        </div>
       
         <div class="container contentContainer" id="topContainer">
             <div class="row">
                <div class="col-md-6 col-md-offset-3" id="topRow">
                    <h1 class="marginTop">Welcome</h1>
                    <p class="lead"> Please Sign in to Begin with </p>
                    <p>Want more information about this App.</p>
                    <p class="bold marginTop">Interested? join our mailing list!</p>
                    <form class="marginTop">
                        
                       <div class="input-group">
                           <span class="input-group-addon">@</span>
                           <input type="email" class="form-control" placeholder="Your email">

                       </div>
                       <input type="submit" class="btn btn-success btn-lg marginTop"/> 

                    </form>
                </div>
                 
             </div>
         </div>

         <div class="container contentContainer">

         <div class="row" class="center">

            <h1 class="center title ">Why this Web App is Awesome</h1>
             <p class="lead center"> Checkout some of the features</p>

         </div>
             
             <div class="row marginBottom">

                <div class="col-md-4 marginTop">
                    <h3><span class="glyphicon glyphicon-envelope">Access Emails</h3>
                    <p>A brief description of the one of the best feature of ths extraordinary app you made. Maybe little more text can help to provide more information on the features of my amazing app today.</p>
                    <button class="btn btn-success marginTop"> Sign up!</button>
                </div>
                 
                <div class="col-md-4 marginTop">
                    <h3><span class="glyphicon glyphicon-pencil">Send Emails</h3>
                    <p>A brief description of the one of the best feature of ths extraordinary app you made. Maybe little more text can help to provide more information on the features of my amazing app today.</p>
                    <button class="btn btn-success marginTop"> Sign up!</button>
                </div>

                <div class="col-md-4 marginTop">
                    <h3><span class="glyphicon glyphicon-tasks">Subscribe for Newsletter</h3>
                    <p>A brief description of the one of the best feature of ths extraordinary app you made. Maybe little more text can help to provide more information on the features of my amazing app today.</p>
                    <button class="btn btn-success marginTop"> Sign up!</button>
                </div>

             </div>

         </div>

         <div class="container contentContainer " id="footer">
             
             <div class="row">
                 
                 <h1 class="center title"><a href="DownloadApp.jsp" style="text-decoration:none">Download The App! </a></h1>
             <p class="lead center"> </p>
             <p class="center"><img src="Include/Images/appleLogo.png" class="appImage"/> </p>
             <p class="center"><img src=""></p>
             </div>

         </div>
         <script type="text/javascript">
         $("#contentContainer").css("min-height",$(window).height());
         </script>

     </body>
</html>
<%@ include file="Footer.jsp" %>