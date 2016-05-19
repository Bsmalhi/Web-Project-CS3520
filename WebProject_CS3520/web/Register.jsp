<%-- 
    Document   : Register
    Created on : May 18, 2016, 1:05:55 PM
    Author     : baljotmalhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <title>Login Authorization</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
        <style>
            #topContainer{       
                background-image:url("Include/Images/forest.jpeg");
                width: 100%;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
            h1{
                font-size: 3em;
            }
            .padd{
                margin-left: 30px;
            }
            .marginTop{
                margin-top: 50px;
                margin-bottom: 50px;
            }
            #topRow{
                margin-top: 100px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <a class="navbar-brand">SnapMail</a>
                <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class=""><a href="Welcome.jsp">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#download">Download The App</a></li>
                            <li class="active"><a href="#register">Register Account</a></li>
                        </ul>                                                                
                </div>
                </div>
        </div>
        
        <div class="container" id="topContainer" style="height: 700px;">
                    <div class="col-lg-6 col-lg-offset-3" id="topRow">
                        <h1 class="marginTop">Create Account</h1>
                        <form action="LoginAuth" methods="post" class="navbar-form navbar-center"/>
                            <input type="hidden" name="action" value="create" class="form-control"/>
                            <label > Firstname</label>
                            <input  type="text" name="firstname" class="form-group"/><br>
                            <label > Lastname</label>
                            <input type="text" name="lastname" class="form-group"/><br>
                            <label  > Email  </label>
                            <input  class="padd" type="text" name="email" class="form-group"/><br>
                            <label > Username</label>
                            <input type="text" name="username" class="form-group"/><br>
                            <label > Password</label>
                            <input type="password" name="password" class="form-group"/><br>
                            <br>
                            <label ></label>
                            <input  type="submit" value="Login" class="btn btn-success"/>   
                        </form>
                    </div>
                </div>
            
        
    </body>
</html>
