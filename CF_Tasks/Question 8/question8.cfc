<cfcomponent>
    <cffunction  name = "dumpStr" returnType = "struct">
        <cfargument  name = "arg1">
        <cfargument  name = "arg2">
        <cfset local.key  =  arguments.arg1>
        <cfset local.val  =  arguments.arg2>
        <cfif structKeyExists(session,"struct")>
            <cfelse>
                <cfset local.struct  = structNew("Ordered")>
        </cfif>
        <cfset  session.struct[local.key]  =  local.val>
        <cfreturn session.struct>
    </cffunction>
</cfcomponent>