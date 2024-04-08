<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="style.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Please Fill Your Note Details.</h1>
		<br>

		<!-- This is Add Note Form -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input required="required" name="title"
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here" />
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea class="form-control" class="textarea" required="required" id="content" name="content"
					placeholder="Enter Your Content Here." style="height: 300px;"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add Note</button>
			</div>
		</form>
	</div>

</body>
</html>
