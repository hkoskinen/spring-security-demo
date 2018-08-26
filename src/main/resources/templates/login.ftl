<#import "lib/utils.ftl" as utils>

<@utils.page>
	<h1>Login</h1>
	<form action="process-login" method="post">
		<div class="form-group">
		<#if RequestParameters.error??>
			<div class="alert alert-danger">Invalid username or password</div>
		</#if>
		</div>
		<div class="form-group">
		<#if RequestParameters.logout??>
			<div class="alert alert-success">You have been logged out</div>
		</#if>
		</div>
	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	  <div class="form-group">
	    <label for="username">Username</label>
	    <input type="text" class="form-control" id="username" placeholder="Username" name="username" required autofocus>
	  </div>
	  
	  <div class="form-group">
	    <label for="password">Password</label>
	    <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
	  </div>
	  <button type="submit" class="btn btn-primary">Login</button>
	</form>
</@utils.page>