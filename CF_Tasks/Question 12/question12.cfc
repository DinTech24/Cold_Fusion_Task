<cfcomponent>
    <cffunction  name="retrieveData" returnType="query">
        <cfquery datasource="myData" name="query">
            select * from fullname;
        </cfquery>
        <!--- <cfreturn query> --->
        <cfdump  var="#query.firstName#">
    </cffunction>
</cfcomponent>