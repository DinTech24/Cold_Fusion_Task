<cfcomponent>
    <cffunction  name="login" returnType="boolean">
        <cfargument  name="userName" type="string">
        <cfargument  name="password" type="string">
        <cfif NOT structKeyExists(session, userName)>
            <cfset session.userName = "#arguments.userName#">
            <cfquery datasource="myData" name="query">
                select count(username) as count from userData27 
                where username = '#arguments.userName#' 
                and password = '#arguments.password#';
            </cfquery>
        </cfif>
        <cfif query.count EQ 1>
            <cfset flag = true>
            <cfelse>
                <cfset flag = false>
        </cfif>
        <cfreturn flag>
    </cffunction>
</cfcomponent>