<cfoutput>
    <cfinvoke  method="#multiply(1,2)#" returnVariable="result">
    <cfset result = >
    <cfdump  var="#res#">
    <cfset result = multiply(1,2,3)>
    <cfdump  var="#res#">
    <cfset result = multiply(1,2,3,4)>
    <cfdump  var="#res#">
</cfoutput>
