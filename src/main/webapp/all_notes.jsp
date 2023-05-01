
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Note Taker | All Notes</title>
        <%@include file="all_css_js.jsp" %>
    </head>
    <body>
        <div class="container">
            <%@include file="navbar.jsp" %>
            <br>
            <h1 class="text-uppercase">All notes: </h1>
            <br>

            <div class="row">
                <div class="col-8 offset-2">

                    <!--fetching data from database-->
                    <%
                        Session s = FactoryProvider.getFactory().openSession();

                        //HQL (Hibernate Query Language)
                        Query q = s.createQuery("from Note");

                        List<Note> list = q.list();

                        for (Note n : list) {
                    %>
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title">
                                <span>
                                    <img src="img/note.png" style="max-width: 30px;" 
                                         alt="Note Image">
                                </span>
                                <%= n.getTitle()%>
                            </h5>
                        </div>
                        <div class="card-body">
                            <p class="card-text"><%= n.getContent()%></p>
                            <div class="text-right">
                                <b><i style="font-size: 12px; color: blue;">Last updated: <%= n.getAddedDate().toLocaleString()%></i></b>
                            </div>
                            <div class="text-center mt-2">
                                <a href="edit_note.jsp?note_id=<%= n.getId()%>" class="btn btn-primary">Edit</a>
                                <a href="DeleteServlet?note_id=<%= n.getId()%>" 
                                   class="btn btn-danger">Delete</a>
                            </div>
                        </div>
                    </div>
                    <br>
                    <%                }
                        s.close();
                    %>
                </div>
            </div>


        </div>
    </body>
</html>
