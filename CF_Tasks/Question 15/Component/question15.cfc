<cfcomponent>
    <cffunction  name = "multiply" returnType = "numeric">
        <cfset local.res  =  1>
        <cfloop array = "#arguments#" index = "i">
            <cfset local.res  =  res * arguments[i]>
        </cfloop>
        <cfreturn local.res>
    </cffunction>
</cfcomponent>