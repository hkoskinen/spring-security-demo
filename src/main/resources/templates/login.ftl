<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Login</title>
		<meta name="viewport" content="width=device-width">
	</head>
	<body>
		<h1>Login</h1>
		
		<form action="process-login" method="post">
			<#if RequestParameters.error??>
				<div style="color:red;">Invalid username or password</div>
			</#if>
			<#if RequestParameters.logout??>
				<div style="color:LimeGreen;">You have been logged out</div>
			</#if>
			<input type="text" name="username" placeholder="username" required autofocus>
			<input type="password" name="password" placeholder="password" required>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<input type="submit" value="Login">
		</form>
		
	</body>
</html>