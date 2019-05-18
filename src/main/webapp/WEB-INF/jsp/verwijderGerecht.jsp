<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Delete</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="/css/bootstrap.min.css">
    </head>
    <body>
        <header>
            <div class="mt-4">
                <h1 class="ml-3">Gerechten Verwijderen</h1>
            </div>
            <div class="my-3">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
                            <li class="nav-item active"><a class="nav-link" href="/gerechten">Gerechten</a></li>
                            <li class="nav-item"><a class="nav-link" href="/weekmenu">Weekmenu</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
        <main class="mx-3">
            <p>Weet u zeker dat u het gerecht "<c:out value="${meal.name}"/>" wilt verwijderen?</p>
            <form method="get" action="/gerechten/confirmdelete">
                <input type="text" name="beschrijving" value="${meal.name}" hidden/>
                <input class="btn btn-dark" type="submit" value="ja"/>
                <a class="btn btn-dark" href="/gerechten/change">nee</a>
            </form>
        </main>
        <footer class="m-3">
            <small><p>Ruben Claes, Internet Programmeren</p></small>
        </footer>
        <script src="/js/jquery.js"></script>
        <script src="/js/bootstrap.bundle.js"></script>
    </body>
</html>