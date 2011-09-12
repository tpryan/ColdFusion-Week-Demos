<cfscript>
	query = querynew("letter,callsign");
	queryAddRow(query);
	querySetCell(query, "letter", "a");
	querySetCell(query, "callsign", "Alpha");
	queryAddRow(query);
	querySetCell(query, "letter", "b");
	querySetCell(query, "callsign", "Bravo");
	queryAddRow(query);
	querySetCell(query, "letter", "c");
	querySetCell(query, "callsign", "Charlie");
	queryAddRow(query);
	querySetCell(query, "letter", "d");
	querySetCell(query, "callsign", "Delta");
	queryAddRow(query);
	querySetCell(query, "letter", "e");
	querySetCell(query, "callsign", "Echo");
	
</cfscript>	
	
	

<cfdump var="#query#">

<!--- To Get Alpha --->
<cfset result = query.callsign[1] />

