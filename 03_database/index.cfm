<cfquery name="result" datasource="cfartgallery">
	SELECT *
	FROM ARTISTS
</cfquery>


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
		</dd>
	</cfloop>
	</dl>	
</cfoutput>