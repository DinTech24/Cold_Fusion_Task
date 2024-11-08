<cfcomponent>
    <cffunction  name="login">
        <cfargument  name="argument1">
        <cfargument  name="argument2">
        <cfif NOT structKeyExists(session, userName)>
            <cfset session.userName = "username123">
            <cfset session.password = "user@123">
        </cfif>
        <cfif arguments.argument1 EQ session.userName AND arguments.argument2 EQ session.password>
            <cfset flag = true>
            <cfelse>
                <cfset flag = false>
        </cfif>
        <cfreturn flag>
    </cffunction>

    <cffunction  name="sessionout">
    </cffunction>
</cfcomponent>