<cfcomponent>
    <cffunction  name="switchCase" returnType="any">
        <cfargument name="number" type="numeric" required="true">

        <cfswitch expression = #arguments.number#>
            <cfcase value=1><cfset result = "ok"></cfcase>
            <cfcase value=2><cfset result = "ok"></cfcase>
            <cfcase value=3><cfset result = "fair"></cfcase>
            <cfcase value=4><cfset result = "good"></cfcase>
            <cfcase value=5><cfset result = "Very good"></cfcase>
        </cfswitch>  
        <cfreturn result>                     
    </cffunction>
</cfcomponent>