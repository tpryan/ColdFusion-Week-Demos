<cfscript>
	greetingArray = arrayNew(1);
	arrayAppend(greetingArray, "Hello World");
	arrayAppend(greetingArray, "Hellou Wourld"); //For those who like to add unnecessary U's
	arrayAppend(greetingArray, "Hola Mundo");
	arrayAppend(greetingArray, "Bonjour tout le monde"); 
	arrayAppend(greetingArray, "Hallo Welt");  
</cfscript>

<cfoutput>
	<ul>
	<cfloop array="#greetingArray#" index="greeting">
		<li>#greeting#</li>
	</cfloop>
	</ul>
</cfoutput>			