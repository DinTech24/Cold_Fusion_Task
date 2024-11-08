<cfoutput>
    <cfset result = multiply(1,2)>
    <cfdump  var="#res#">
    <cfset result = multiply(1,2,3)>
    <cfdump  var="#res#">
    <cfset result = multiply(1,2,3,4)>
    <cfdump  var="#res#">
</cfoutput>


<cffunction  name="multiply">
    <cfset len = arrayLen(arguments)>
    <cfset res = 1>
    <cfloop array="#arguments#" index="i">
        <cfset res = res * arguments[i]>
    </cfloop>
</cffunction>
