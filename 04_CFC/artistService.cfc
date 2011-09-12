<cfcomponent>
	
	<cffunction name="list" access="remote" returntype="query">
	
		<cfquery name="local.result" datasource="cfartgallery">
			SELECT *
			FROM ARTISTS
		</cfquery>

		<cfreturn local.result />
	</cffunction>
	
	<cffunction name="listAsObjects" access="remote" returntype="array">
	
		<cfset var query = list() />
		<cfset result = ArrayNew(1) />
		<cfloop query="query">
			<cfset var artist = new artist() />
			<cfset artist.setFirstName(firstName) />
			<cfset artist.setLastName(lastName)/>
			<cfset artist.setAddress(address)/>
			<cfset artist.setCity(city)/>
			<cfset artist.setState(state)/>
			<cfset artist.setPostalCode(postalcode)/>
			<cfset artist.setEmail(email)/>
			<cfset artist.setPhone(phone)/>
			<cfset artist.setfax(Fax)/>
			<cfset arrayAppend(result,artist)/>
		</cfloop>
		
		<cfreturn result />
	</cffunction>
	
</cfcomponent>