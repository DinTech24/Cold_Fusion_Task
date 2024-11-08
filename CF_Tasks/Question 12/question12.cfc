<cfcomponent>
    <cffunction  name="retrieveData" returnType="any">
        <cfquery datasource="myData" name="query">
            select * from fullname;
        </cfquery>
        <cfreturn query>
        </cffunction>
</cfcomponent>