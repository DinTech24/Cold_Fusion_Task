<cfcomponent>
    <cffunction  name = "dumpStr" returnType = "struct">
        <cfargument  name = "arg1">
        <cfargument  name = "arg2">
        <cfset local.key  =  arguments.arg1>
        <cfset local.val  =  arguments.arg2>
        <cfset local.struct  = structNew("Ordered")>
        <cfset  local.struct[local.key]  =  local.val>
        <cfreturn local.struct>
    </cffunction>
</cfcomponent>