<cfcomponent>
    <cffunction  name = "dumpStr" retrunType = "any">
        <cfargument  name = "arg1">
        <cfargument  name = "arg2">
        <cfset local.key  =  arguments.arg1>
        <cfset local.val  =  arguments.arg2>
        <cfif structKeyExists(session,"struct")>
            <cfelse>
                <cfset session.struct  = structNew("Ordered")>
        </cfif>
        <cfif structKeyExists(session.struct,local.key)> 
            <cfset local.warn  =  "Key already Exists">
            <cfreturn local.warn>
            <cfelse>
                <cfset  session.struct[local.key]  =  local.val>
                    <cfreturn session.struct>
        </cfif>
    </cffunction>
</cfcomponent>