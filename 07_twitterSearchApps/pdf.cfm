<cfsetting showdebugoutput="false" >
<cf_header >
<cf_searchform>

<cfif structKeyExists(form, "q") AND len(form.q) gt 0>
	<cfset twitterResults = new Twitter().search(form.q) />
	<cfdocument format="pdf" >
	<style type="text/css" media="print">@import "main.css";</style>
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
	</cfdocument>
</cfif>

<cf_footer>