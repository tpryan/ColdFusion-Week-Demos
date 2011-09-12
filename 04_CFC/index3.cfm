<cfset artistService = new artistService() />
<cfset result = artistService.listAsObjects() /> 

<cfoutput>
	<dl>
	<cfloop array="#result#" index="artist">
		<dt>#artist.getFullName()#</dt>
		<dd>
			<address>
				#artist.getFormattedAddress()#<br />
			</address>
			<div class="phone">
				#artist.getFormattedPhone()#
			</div>
		</dd>
	</cfloop>
	</dl>	
</cfoutput>