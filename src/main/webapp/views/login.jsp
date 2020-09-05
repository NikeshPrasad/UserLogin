<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Famebook</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<style>
			#top-banner {
                height: fit-content;
				background-color: cyan;
				font-size: xxx-large;
				font-weight: bold;
				color: blue;
                padding: 10px 40px;
            }
            #main-content {
                font-size: medium;
            }
            #login {
                margin: 50px auto;
                padding: 20px;
            }
            #new-user {
                text-align: center;
            }
		</style>
	</head>
	<body>
		<div id="top-banner">
			<span>famebook</span>
        </div>
        <div id="main-content" class="container">
            <div id="login">
                <h1 style="margin: 20px;">Login</h1><hr>
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-1">Username:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-1">Password:</label>
                        <div class="col-sm-4">
                            <input type="password" class="form-control"/>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <input type="submit" value="Login" class="form-control btn btn-success"/>
                    </div>
                </form>
            </div>
            <div id="new-user" class="col-sm-5">
                <a href="">New User? Register here</a>
            </div>
        </div>
	</body>
</html>