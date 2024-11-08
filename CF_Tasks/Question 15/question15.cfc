<cfcomponent>
    <cffunction  name="multiply">
        <cfset res = 1>
        <cfloop array="#arguments#" index="i">
            <cfset res = res * arguments[i]>
        </cfloop>
        <cfreturn res>
    </cffunction>
</cfcomponent>