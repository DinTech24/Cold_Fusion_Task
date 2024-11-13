<cfcomponent>
    <cffunction  name = "numUpto" returnType = "struct">
        <cfargument  name = "arg">
        <cfset local.struct  =  structNew()>
        <cfloop index = "i" from = "1" to = "#arguments.arg#">
            <cfif i % 2 EQ 0>
                <cfset local.struct[i]  =  "green">
                <cfelseif  i % 2 EQ 1>
                    <cfset local.struct[i]  =  "blue">
            </cfif>
        </cfloop>
        <cfreturn local.struct>
    </cffunction>
</cfcomponent>