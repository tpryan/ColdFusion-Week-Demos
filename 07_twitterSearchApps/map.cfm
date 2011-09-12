<cfsetting showdebugoutput="false" >
<cf_searchform>


<cfif structKeyExists(form, "q") AND len(form.q) gt 0>
	<cfset twitterResults = new Twitter().geosearch(form.q,true) />
	<cfset address = "1900 Hamilton Street Philadelphia, PA 19130" />
	<cfset geocoder = new geocode() />
	<cfmap centeraddress="#address#" width="600" height="600" name="map">
		<cfloop query="twitterResults">
			<cfset latlon = geocoder.geocode(location) />
			<cfsavecontent variable="tweetInfo" >
				<cfoutput>
                	<dl>
						<dt>
						<img src="#profileImage#" width="48" height="48" />
						#username#
						</dt>
						<dd><div style='width:300px'>#content#</div></dd>
					</dl>	
                </cfoutput>
			</cfsavecontent>
			<cfmapitem tip="#username#" latitude="#latlon.lat#" longitude="#latlon.lon#" 
					 markerwindowcontent="#tweetInfo#" showmarkerwindow="true" >
		</cfloop>	
	</cfmap>	
	
</cfif>