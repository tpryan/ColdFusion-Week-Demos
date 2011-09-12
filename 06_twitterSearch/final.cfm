<form action="" method="post">
	<label for="q">Search Term:</label>
	<input type="text" name="q" id="q" value="" />
	<input type="submit" name="submit" value="Go!" />
</form>

<cfif structKeyExists(form, "q") AND len(form.q) gt 0>
	<cfset twitterURL = "http://search.twitter.com/search.atom?q=" />
	<cffeed query="twitterResults" action="read" source="#twitterURL##form.q#">
	
	<dl>
	<cfoutput>
		<cfloop query="twitterResults">
			<dt><a href="#authoruri#">
				<img width="48" height="48" src="#getToken(linkhref,2,',')#">
				#authorname# 
				</a>
			</dt>
			<dd>#content#</dd>
		</cfloop>	
    </cfoutput>
	</dl>
</cfif>