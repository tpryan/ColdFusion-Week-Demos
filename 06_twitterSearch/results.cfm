<!--- http://search.twitter.com/search.atom?q= 
authorname
authoruri
content
linkhref

--->

<cffeed query="twitterResults" action="read" source="http://search.twitter.com/search.atom?q=#form.q#">



<cfoutput>
	<dl>
	<cfloop query="twitterResults">
		<dt>
			<img src="#ListLast(linkhref)#" height="48" width="48" />
			<a href="#authoruri#">#authorname#</a>
		</dt>
		<dd>#content#</dd>
	</cfloop>
	</dl>
</cfoutput>