<cfcomponent>
    <cffunction  name="numUpto">
        <cfargument  name="arg">
        <cfset struct = structNew()>
        <cfloop index="i" from="1" to="#arguments.arg#">
            <cfif i % 2 EQ 0>
                <cfset struct[i] = "green">
                <cfelseif  i % 2 EQ 1>
                    <cfset struct[i] = "blue">
            </cfif>
        </cfloop>
        <cfreturn struct>
    </cffunction>
</cfcomponent>