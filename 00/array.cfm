<cfset array = {a= "Alpha",b="Bravo",c="Charlie", d="Delta", e="Echo"} />
<cfdump var="#array#">

<!--- To Get Alpha --->
<cfset result = array[1] />