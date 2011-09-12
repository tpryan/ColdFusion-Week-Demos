<cfset struct = {a="Alpha",b="Bravo",c="Charlie", d="Delta", e="Echo"} />
<cfdump var="#struct#">

<!--- To Get Alpha --->
<cfset result = struct['a'] />