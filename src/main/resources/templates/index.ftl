<#import "lib/utils.ftl" as utils>

<@utils.page>
	<h1>Home</h1>
	<p>Hey, <i>${username}</i>!</p>
	
	<!-- our logout button needs to be form, because we need to use POST method. -->
	<form action="logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="submit" value="Logout" class="btn btn-primary">
	</form>
</@utils.page>