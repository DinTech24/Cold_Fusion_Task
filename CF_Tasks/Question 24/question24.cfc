<cfcomponent>
    <cffunction  name="verifyEmail">
        <cfargument  name="firstName">
        <cfargument  name="email">
        <cfquery datasource="myData" name="query">
            select Email_id from UserCred where Email_id='#arguments.email#';
        </cfquery>
        <cfif query.Email_id EQ "">
            <cfreturn false>
            <cfelse>
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