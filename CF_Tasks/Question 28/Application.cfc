<cfcomponent>
    <cfset this.sessionmanagement = true>
    <cfset this.datasource = "mydata">
     <cffunction  name="onRequest" returnType="void">
     
        <cfargument  name="requestPage" required="true"> 
        <cfset local.excludePages = ["/Dinil/CF_Tasks/Question 28/signup.cfm","/Dinil/CF_Tasks/Question 28/index.cfm"]> 
        <cfif ArrayContains(local.excludePages,arguments.requestPage)>
            <cfinclude template="#arguments.requestPage#">
            <cfelseif structKeyExists(session, "login") AND session.login EQ true AND structKeyExists(session, "username")>
                <cfinclude  template="#arguments.requestPage#">
            <cfelse>
                <cfinclude  template="index.cfm">
        </cfif>
        
    </cffunction>
</cfcomponent>