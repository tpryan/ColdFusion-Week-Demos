<cfif structKeyExists(form, "username")>
	<cfset session.loggedin = true />
	<cfset session.username = form.username />
	<cflocation url="index.cfm" addtoken="false" >	
</cfif>	


<form action="" method="post">
	<label for="username">Username:</label>
	<input name="username" id="username" type="text" /><br />
	<input type="submit" value="Login" />
</form>