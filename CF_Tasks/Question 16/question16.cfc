<cfcomponent>
<cffunction  name = "printPat" returnType = "string">
    <cfset patt  = " ">
    <cfloop index = "i" from = "1" to = "3">
        <cfset patt  =  patt & i>
        <cfloop index = "j" from = "1" to = "2">
                <cfset patt  =  patt & " ">
                <cfset patt  =  patt & ( i + (3 * j))>
        </cfloop>
         <cfset patt  =  patt & "<br>">
    </cfloop>
    <cfreturn patt>
</cffunction>
</cfcomponent>
