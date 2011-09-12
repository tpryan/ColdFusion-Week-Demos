<cfset variable = 1 />

<cfoutput>
	<!--- Numeric --->
	Addition Result: #variable + 20#
	<br />
	
	<!--- String --->
	String Length: #Len(variable)#
	<br />
		
	<!--- Boolean --->
	<cfif variable>
		Variable == true
	<cfelse>
		Variable == false
	</cfif>			
					
</cfoutput>	