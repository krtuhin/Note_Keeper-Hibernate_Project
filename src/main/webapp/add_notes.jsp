
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Notes</title>

        <!--all bootstrap-->
        <%@include file="all_css_js.jsp" %>
    </head>
    <body>
        <div class="container">
            <%@include file="navbar.jsp" %>
            <br>
            <h1>Please fill your note details</h1>

            <!--add notes form-->
            <form class="mt-4" action="SaveNoteServlet" method="post">
                <div class="form-group">
                    <label for="title">Note Title</label>
                    <input type="text" class="form-control" id="title" required name="title"
                           placeholder="Enter note title">
                </div>

                <div class="form-group">
                    <label for="content">Note Content</label>
                    <textarea class="form-control" id="content" required name="content"
                              placeholder="Enter your content" rows="5"></textarea>
                </div>
                <div class="container text-center">
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
            <!--end add notes form-->
        </div>
    </body>
</html>
