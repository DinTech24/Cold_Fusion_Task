<cfoutput>
    <cfset local.result  =  multiply(1,2)>
    <cfdump  var = "#local.res#">
    <cfset local.result  =  multiply(1,2,3)>
    <cfdump  var = "#local.res#">
    <cfset local.result  =  multiply(1,2,3,4)>
    <cfdump  var = "#local.res#">
</cfoutput>


<cffunction  name = "multiply">
    <cfset local.len  =  arrayLen(arguments)>
    <cfset local.res  =  1>
    <cfloop array = "#arguments#" index = "i">
        <cfset local.res  =  local.res * arguments[i]>
    </cfloop>
</cffunction>
