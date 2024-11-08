<cfcomponent>
    <cfset This.sessionManagement="Yes">
    <cffunction  name="dumpStr">
        <cfargument  name="arg1">
        <cfargument  name="arg2">
        <cfset key = arguments.arg1>
        <cfset val = arguments.arg2>
        <cfset struct =structNew("Ordered")>
        <cfset  session.struct[key] = val>
        <cfdump  var="#session.struct#">
    </cffunction>
</cfcomponent>