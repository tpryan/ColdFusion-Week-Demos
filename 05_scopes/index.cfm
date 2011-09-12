<cfoutput>
<h1>#application.title#</h1>
<p>Hello #session.username# </p>

<p>Your application started at #application.started#</p>
<p>Your session started at #session.started#</p>
<p>Your request started at #request.started#</p>
</cfoutput>

<a href="dumpscopes.cfm">Show Scopes</a>