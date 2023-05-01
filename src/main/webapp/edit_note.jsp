
<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Note Taker | Edit Note</title>
        <%@include file="all_css_js.jsp" %>
    </head>
    <body>
        <div class="container">
            <%@include file="navbar.jsp" %>
            <br>
            <h1 class="text-uppercase">Edit your notes: </h1>

            <!--getting note details using note id-->
            <%
                int noteId = Integer.parseInt(request.getParameter("note_id"));

                Session s = FactoryProvider.getFactory().openSession();

                Note note = (Note) s.get(Note.class, noteId);

            %>
            <!--edit note form-->
            <form class="mt-4" action="EditServlet" method="post">

                <!--id field-->
                <input value="<%= noteId%>" name="note_id" type="hidden">

                <!--title field-->
                <div class="form-group">
                    <label for="title">Note Title</label>
                    <input type="text" class="form-control" id="title" required name="title"
                           placeholder="Enter note title" value="<%= note.getTitle()%>">
                </div>

                <!--content field-->
                <div class="form-group">
                    <label for="content">Note Content</label>
                    <textarea class="form-control" id="content" required name="content"
                              placeholder="Enter your content" rows="5"><%= note.getContent()%></textarea>
                </div>

                <!--update button-->
                <div class="container text-center">
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>
            </form>
            <!--end add notes form-->
        </div>
    </body>
</html>
