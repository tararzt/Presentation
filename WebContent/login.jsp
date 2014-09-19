<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Expense Manager</title>
<script type="text/javascript" src="js/common/jquery.js"></script>
<script type="text/javascript" src="js/common/api.js"></script>
<script type="text/javascript" src="js/common/service.js"></script>
<script type="text/javascript" src="js/common/generic-var.js"></script>
<script type="text/javascript" src="js/action/login-register.js"></script>
<link rel="stylesheet" type="text/css" href="css/ex-man.css" />
</head>
<body>
	<div id="time"></div>
	
		<div id="login-container">
			<div id="user-login-register">
				<h1 id="welcome-text"><b><i>Welcome to Expense Manager</i></b></h1>
				<form action="loginuser" method="post">
					<div id="form-container">
						<div id="sign-in" style="margin:34px;"> 
							<div id="signin-user-name" class="margin-35">
								<span><b>Username: </b></span> <input type="text" id="username" class="sign-in-up-fields"/ name="username"> 
							</div>
							<div id="sign-in-pwd" class="margin-35" name="password">
								<span><b>Password: </b></span> <input type="password" class="sign-in-up-fields" name="password" id="signin-pwd"/>
							</div>
						</div> 
						<div id="sign-up" style="margin:34px;display:none;">
							<div id="signup-email-id" class="margin-35">
								<span><b>Email Id: </b></span><input type="text" id="email-id" class="sign-in-up-fields" name="reg-email"/> 
							</div>
							<div id="signup-user-name" class="margin-35">
								<span><b>Username: </b></span><input type="text" id="user-name" class="sign-in-up-fields" name="reg-login"/>
							</div>
							<div id="signup-pwd" class="margin-35">
								<span><b>Password: </b></span><input type="password" id="reg-pwd" class="sign-in-up-fields" name="reg-pwd"/>
							</div>
						</div>
					</div>
					<div id="signin-signup">
						<input id="sign-in-submit" type="button" value="Sign in" />
						<input id="sign-up-submit" type="button" value="Sign Up" />
					</div>
				</form>
			</div>
		</div>
	
</body>
<!-- <script>
$(document).ready(function(){
	
	var api  = new APP.common.api();
	api.setUrl('/user/get/2');
	api.processRequest({},function(res){
		if(res && res.data)
		{
			var user = res.data;
			var createdOnUTC = new Date(user.createdOn).toUTCString();
			var createdOnLocal = new Date(user.createdOn).toString();

			var addedOnUTC = new Date(user.addedOn).toUTCString();
			var addedOnLocal = new Date(user.addedOn).toString();
			

			$("#time").html("creted-on: GMT: "+createdOnUTC+ " : created on Local: "+createdOnLocal+"<br />"+

					"added-on: GMT: "+addedOnUTC+ " : created on Local: "+addedOnLocal);
			
		}
	});
});
</script> -->
</html>