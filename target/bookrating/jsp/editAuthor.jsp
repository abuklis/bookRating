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
        <c:choose>
            <%--For admin--%>
            <c:when test="${sessionScope.role == admin}">
                <ul class="nav navbar-nav header-nav">
                    <li class="nav-item">
                        <a href="controller?command=addAuthorPage" class="nav-link">AddAuthor</a></li>
                    <li class="nav-item">
                        <a href="controller?command=viewAllUsers" class="nav-link">View user's info</a></li>
                    <li class="nav-item">
                        <a href="controller?command=addBookPage" class="nav-link">Add Book</a></li>
                    <li class="nav-item">
                        <a href="controller?command=viewTodayComments" class="nav-link">View today comments</a></li>
                    <li class="nav-item">
                        <a href="controller?command=logout"  class="nav-link">Logout</a>
                    </li>
                </ul>
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>
        <%--For user--%>
        <c:choose>
            <c:when test="${sessionScope.role == user}">
                <div class="header-nav" >
                    <span class="welcome-text">Hi, </span><a href="controller?command=viewProfile&login=${sessionScope.user.login}"  class="nav-link">${sessionScope.user.login}</a>
                    <a href="controller?command=logout"  class="nav-link">Logout</a>
                </div>
            </c:when>
            <c:when test="${sessionScope.role == admin}">
            </c:when>
            <c:otherwise>
                <ul class="nav navbar-nav header-nav">
                    <li class="nav-item">
                        <a href="controller?command=registerPage" class="nav-link">Registration</a>
                    </li>
                    <li class="nav-item">
                        <a href="controller?command=loginPage&page=${pageContext.request.requestURI}" class="nav-link">Login</a>

                    </li>
                </ul>
            </c:otherwise>
        </c:choose>
    </nav>
</div>

<div class="container-fluid">
    <div class="row gray-bg">

        <section id="tm-section-4" class="tm-section">
            <div class="tm-container">

                <h2 class="blue-text text-xs-center">Edit author</h2>

                <form name="editAuthorForm" action="controller" method="POST" enctype="multipart/form-data" class="tm-contact-form">
                    <input type="hidden" name="command" value="editAuthor"/>
                    <input type="hidden" name="page" value="${pageContext.request.requestURI}"/>
                    <input type="hidden" name="authorId" value="${author.authorId}"/>

                    <div class="form-group row">
                        <div class="col-md-1"></div>
                        <div class="col-md-2 single_view"><label for="author">Full Name: </label></div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="author" name="fullName" value="${author.fullName}"/>
                        </div>
                        <div class="col-md-3"></div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-1"></div>
                        <div class="col-md-2 single_view"><label for="title">Birth Year:</label></div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="title" name="birthYear" required value="${author.birthYear}"/>
                        </div>
                        <div class="col-md-3"></div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-1"></div>
                        <div class="col-md-2 single_view"> <label for="description">Biography:</label></div>
                        <div class="col-md-6">
                            <textarea class="form-control" rows="3" id="description" name ="biography" required >${author.biography}</textarea>
                        </div>
                        <div class="col-md-3"></div>
                    </div>

                    <div class="form-group row">
                        <div class="col-md-1"></div>
                        <div class="col-md-2 single_view"><label for="publishingYear">Birth country:</label></div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="publishingYear" name="birthCountry" required value="${author.birthCountry}"/></div>
                        <div class="col-md-3"></div>
                    </div>


                    <div class="form-group row">
                        <div class="col-md-1"></div>
                        <div class="col-md-2 single_view"><label for="newImage">Image:</label></div>
                        <div class="col-md-6">
                            <input type="file" id="newImage" name="newImage">
                            <p class="help-block">Choose an image</p>
                            <input type="hidden" name="oldImage" value="${author.imageUrl}">
                        </div>
                        <div class="col-md-3"></div>
                    </div>

                    <div class="row">
                        <div class="col-md-5"></div>
                        <div class="col-md-2"><input type="submit" class="btn btn-primary button alt" value="Submit"/></div>
                        <div class="col-md-5"></div>
                    </div>
                </form>
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
