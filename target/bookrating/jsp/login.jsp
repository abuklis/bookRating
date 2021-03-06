<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BookRating</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:100,300,400">
    <link rel="stylesheet" href="font-awesome-4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<c:set var="user" value="user"/>
<c:set var="admin" value="admin"/>
<body id="top" class="home">

<div class="tm-navbar-container-dark">
    <nav class="navbar navbar-full bg-inverse">
        <a class="home-link" href="controller?command=viewAllBooks">BookRating</a>
    </nav>
</div>

<div class="container-fluid">
    <div class="row gray-bg">
        <section id="tm-section-4" class="tm-section">
            <div class="tm-container">
                <c:choose>
                    <c:when test="${not empty errorMessage}">
                        <div class="row text-xs-center error-text">Login or password is incorrect.</div>
                    </c:when>
                </c:choose>
                <div class="col-md-4 col-lg-4 col-xl-4"></div>

                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                    <h2 class="blue-text text-xs-center">Login</h2>
                    <form name="loginForm" action="controller" method="POST" class="tm-contact-form">
                        <input type="hidden" name="command" value="login"/>
                        <div class="form-group">
                            <input type="text" id="login" name="login" class="form-control" placeholder="Login"  required/>
                        </div>
                        <div class="form-group">
                            <input type="password" id="password" name="password" class="form-control" placeholder="Password"  required/>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn tm-light-blue-bordered-btn pull-xs-right login-button">Submit</button>
                        </div>
                        <div class="row register-text">
                            Don't have account? <a href="controller?command=registerPage" class="register-link">Sign up!</a>
                        </div>
                    </form>
                </div> <!-- col -->
                <div class="col-md-4 col-lg-4 col-xl-4"></div>
            </div>
        </section>
    </div>

</div> <!-- container-fluid -->

<script src="js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
<script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap, http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h -->
<script src="js/bootstrap.min.js"></script>                 <!-- Bootstrap (http://v4-alpha.getbootstrap.com/) -->
<script src="js/jquery.singlePageNav.min.js"></script>      <!-- Single Page Nav (https://github.com/ChrisWojcik/single-page-nav) -->
<script src="js/jquery.magnific-popup.min.js"></script>     <!-- Magnific pop-up (http://dimsemenov.com/plugins/magnific-popup/) -->
</body>
</html>