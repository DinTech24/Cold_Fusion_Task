<cfcomponent>
    <cffunction  name="multiply">
        <cfset len = arrayLen(arguments)>
        <cfset res = 1>
        <cfloop array="#arguments#" index="i">
            <cfset res = res * arguments[i]>
        </cfloop>
    </cffunction>
</cfcomponent>