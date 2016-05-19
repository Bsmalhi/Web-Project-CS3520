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
                background-image:url("Include/Images/pic1.jpeg");
                width: 100%;
                height: 100%;
                background-size: auto;
               
            }
            h1{
                font-size: 3em;
            }
            #onetry{
                margin-top: 50px;
            }
            .user{
                font-size: 1.5em;
            }
            .pass{
                font-size: 1.5em;
            }
            .padd{
                margin-bottom: 5px;
            }
            .padd1{
                margin-bottom: 5px;
                margin-left: 22px;
            }
            .marginTop{
                margin-top: 50px;
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
                            <li class="active"><a href="#home">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#download">Download The App</a></li>
                        </ul>                                                                
                </div>
                </div>
        </div>
        
                <div class="container contentContainer" id="topContainer">
                    <div class="col-md-6 col-md-offset-3" id="topRow">
                        <h1 class="marginTop">Create Account</h1>
                        <form action="LoginAuth" methods="post" class="navbar-form navbar-center"/>
                            <input type="hidden" name="action" value="create" class="form-control"/>
                            <label class="padd"> Firstname</label>
                            <input class="padd" type="text" name="firstname" class="form-control"/><br>
                            <label class="padd"> Lastname</label>
                            <input class="padd" type="text" name="lastname" class="form-control"/><br>
                            <label class="padd"> Email</label>
                            <input class="padd1" type="text" name="email" class="form-control"/><br>
                            <label class="padd"> Username</label>
                            <input class="padd" type="text" name="username" class="form-control"/><br>
                            <label class="padd"> password</label>
                            <input class="padd" type="password" name="password" class="form-control"/><br>
                            <br>
                            <label class="padd"></label>
                            <input class="padd" type="submit" value="Login" class="btn btn-success"/>   
                        </form>
                    </div>
                </div>
            
        
    </body>
</html>
