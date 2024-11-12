<cfcomponent>
    <cffunction  name="verifyEmail" access="remote" returnType="any">
        <cfargument  name="email" type="string">
        <cfquery datasource="myData" name="query">
            select count('Email_id') as count from UserCred where Email_id='#arguments.email#';
        </cfquery>
        <cfif query.count>
            <cfreturn true>
        </cfif>
    </cffunction>
    <cffunction  name="detailsEntry">
        <cfargument  name="firstName">
        <cfargument  name="email">
        <cfquery datasource="myData" name="query">
            insert into UserCred values('#arguments.firstName#','#arguments.email#');
        </cfquery>
    </cffunction>
</cfcomponent>