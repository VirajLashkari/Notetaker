<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.*, org.hibernate.*, com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Note</title>
<%@include file="style.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit Your Note</h1>
		</br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id"));
		Session session2 = FactoryProvider.getSessionFactory().openSession();
		Note note = (Note)session2.get(Note.class, noteId);
		%>
		<!-- This is Add Note Form -->
		<form action="UpdateServlet" method="post">
		<input value="<%=note.getId()%>" name="noteId" type="hidden" />
			<div class="form-group">
				<label for="title">Note Title</label> <input required="required"
					name="title" type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here" value="<%=note.getTitle()%>"/>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea class="form-control textarea" required="required" id="content"
					name="content" placeholder="Enter Your Content Here."
					style="height: 300px;"><%=note.getContent()%></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Note</button>
			</div>
		</form>
	</div>
</body>
</html>
