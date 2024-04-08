<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes : Note Taker</title>
<%@include file="style.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>All Notes :</h1>
		<br>
		<div class="row">
			<div class="col-12">
				<%
				Session session2 = FactoryProvider.getSessionFactory().openSession();
				Query query = session2.createQuery("from Note");
				List<Note> list = query.list();
				for (Note note : list) {
				%>
				<div class="card mt-3">
					<img class="card-img-top" style="max-width: 100px;"
						src="images/note_card.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<textarea disabled class="form-control text"
							style="height: 300px; font-size: 17px; color: white; background-image: url('https://t3.ftcdn.net/jpg/01/00/91/64/360_F_100916405_bVAkUGRousJrk3g3j1tg5C891VLMFBYg.jpg');"><%=note.getContent()%></textarea>
						<a href="DeleteServlet?note_id=<%=note.getId()%>"
							class="btn btn-danger">Delete</a> <a
							href="edit.jsp?note_id=<%=note.getId()%>"
							class="btn btn-primary">Update</a>
					</div>
				</div>
				<%
				}
				session2.close();
				%>
			</div>
		</div>
	</div>

</body>
</html>