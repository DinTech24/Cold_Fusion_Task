<cfcomponent>
    <cfset This.sessionManagement="Yes">
    <cffunction  name="dumpStr">
        <cfargument  name="arg1">
        <cfargument  name="arg2">
        <cfset key = arguments.arg1>
        <cfset val = arguments.arg2>
        <cfif structKeyExists(session,"struct")>
            <cfset struct =structNew("Ordered")>
            <cfelse>
                <cfset session.struct =structNew("Ordered")>
        </cfif>
        <cfif structKeyExists(session.struct,key)> 
            <cfset warn = "Key already Exists">
            <cfreturn warn>
            <cfelse>
                <cfset  session.struct[key] = val>
                    <cfset warn = "New element added">
                     <cfdump  var="#session.struct#">
                    <cfreturn warn>
        </cfif>
    </cffunction>
</cfcomponent>