<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>User registration</title>
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
			#user-registration {
                margin: 50px auto;
                padding: 20px;
            }
            #already-registered {
                text-align: center;
            }
		</style>
		<script type="text/javascript">
			function validateForm() {
				var addEmployeeForm = document.getElementById("addEmployeeForm");
				
				var salary = addEmployeeForm["salary"].value;
				
				if ( ! /^\d+.?\d*$/.test(salary)) {
					alert("Salary should be upto two decimal places only");
					return false;
				}
				
				return true;
			}
		</script>
	</head>
	<body>
        <div id="top-banner">
            <span>famebook</span>
        </div>
        <div id="main-content" class="container">
            <div id="user-registration">
                <h1 style="margin:20px 0;">Registration</h1><hr>
                <h3 style="margin:20px 0;">Enter your details</h3>
                <sp:form id="userForm" class="form-horizontal" onsubmit="" action="" method="post" modelAttribute="user">
                    <div class="form-group">
                        <sp:label path="firstName" class="control-label col-sm-2">First name:</sp:label>
                        <div class="col-sm-4">
                            <sp:input path="firstName" class="form-control" maxlength="15" required="true" name="firstName"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <sp:label path="lastName" class="control-label col-sm-2">Last name:</sp:label>
                        <div class="col-sm-4">
                            <sp:input path="lastName" class="form-control" maxlength="15" required="true" name="lastName"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <sp:label path="gender" class="control-label col-sm-2">Gender:</sp:label>
                        <div class="col-sm-2">
                            <sp:radiobutton path="gender" value="Male" required="true"/> Male
                        </div>
                        <div class="col-sm-2">
                            <sp:radiobutton path="gender" value="Female"/> Female
                        </div>
                    </div>
                    <div class="form-group">
                    	<sp:label path="username" class="control-label col-sm-2">Username:</sp:label>
                    	<div class="col-sm-4">
                    		<sp:input path="username" class="form-control" minlength="25" maxlength="25" required="true" name="username"/>
                    	</div>
                    </div>
                    <div class="form-group">
                        <label for="rawPassword" class="control-label col-sm-2">Password</label>
                        <div class="col-sm-4">
                            <input type="password" class="form-control" name="rawPassword" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="confirmPassword" class="control-label col-sm-2">Confirm Password</label>
                        <div class="col-sm-4">
                            <input type="password" class="form-control" name="confirmPassword" required/>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <input type="submit" class="form-control btn btn-success" value="Register"/>
                    </div>
                </sp:form>
            </div>
            <div id="already-registered" class="col-sm-6">
                <a href="">Already Registered? Login here</a>
            </div>
        </div>
	</body>
</html>