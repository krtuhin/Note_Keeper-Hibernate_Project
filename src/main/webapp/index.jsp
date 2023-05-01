<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Note Taker | Home Page</title>

        <!--all bootstrap-->
        <%@include file="all_css_js.jsp" %>
    </head>
    <body>
        <!--navbar-->
        <div class="container">
            <%@include file="navbar.jsp" %>
        </div>
        <!--end navbar-->
        <br>

        <div class="card my-3 py-3">
            <img alt="Note Image" src="img/note.png" class="img-fluid mx-auto"
                 style="max-width: 300px;">
            <h1 class="text-primary text-uppercase text-center mt-3">
                Start taking your notes</h1>
            <div class="container text-center">
                <a class="btn btn-outline-primary text-uppercase" href="add_notes.jsp">Start here</a>
            </div>
        </div>

        <br>
        <br>

        <p style="font-size: 9px;" class="text-center text-primary">
            <b><i>Created by:- Tuhin</i></b>
        </p>
    </body>
</html>