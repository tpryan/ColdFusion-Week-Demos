<cfsetting showdebugoutput="false"> 
<cf_header >
<cf_searchform>

<cfif structKeyExists(form, "q") AND len(form.q) gt 0>
	<cfset twitterResults = new Twitter().search(form.q) />


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

<cf_footer>