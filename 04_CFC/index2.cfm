<cfset artistService = new artistService() />
<cfset result = artistService.listAsObjects() /> 

<cfoutput>
	<p>There are <strong>#ArrayLen(result)#</strong> results</p>
	
	<dl>
	<cfloop array="#result#" index="artist">
		<dt>#artist.getFirstname()# #artist.getLastname()#</dt>
		<dd>
			<address>
				#artist.getaddress()#<br />
				#artist.getcity()#, #artist.getstate()#, #artist.getpostalcode()#<br />
			</address>
			<div class="phone">
				#artist.getphone()#
			</div>
		</dd>
	</cfloop>
	</dl>	
</cfoutput>