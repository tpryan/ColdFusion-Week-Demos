<cfset artistService = new artistService() />
<cfset result = artistService.list() /> 

<cfoutput>
	<p>There are <strong>#result.RecordCount#</strong> results</p>
	
	<dl>
	<cfloop query="result">
		<dt>#firstname# #lastname#</dt>
		<dd>
			<address>
				#address#<br />
				#city#, #state#, #postalcode#<br />
			</address>
			<div class="phone">
				#phone#
			</div>
		</dd>
	</cfloop>
	</dl>	
</cfoutput>