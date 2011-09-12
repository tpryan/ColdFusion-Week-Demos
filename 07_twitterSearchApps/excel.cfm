<cf_searchform>

<cfif structKeyExists(form, "q") AND len(form.q) gt 0>
	<cfset twitterResults = new Twitter().search(form.q) />
	
	<!--- convert to spreadsgeet --->
	<cfspreadsheet action="write" query="twitterResults" filename="twitter.xls" overwrite="true" />
	<!--- spit out to web browser --->
	<cfheader name="Content-Disposition" value="filename=twitter.xls">
	<cfcontent file="#ExpandPath('./twitter.xls')#" type="application/msexcel"  />
	
	
</cfif>