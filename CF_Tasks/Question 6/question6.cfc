<cfcomponent>
    <cffunction  name="dumpStr">
        <cfargument  name="arg1">
        <cfargument  name="arg2">
        <cfset key = arguments.arg1>
        <cfset val = arguments.arg2>
        <cfset struct =structNew("Ordered")>
        <cfset  struct[key] = val>
        <cfdump  var="#struct#">
    </cffunction>
</cfcomponent>