<cfscript>
	artist = EntityLoad('artists', 1, true);
	
	//artist.setCity('San Jose');
	//artist.setState('CA');
	//EntitySave(artist);
	writeDump(artist);
</cfscript>

<cfoutput>
<p>
	#artist.getFirstName()# #artist.getLastName()#<br />
	#artist.getCity()# 
</p>

</cfoutput>	