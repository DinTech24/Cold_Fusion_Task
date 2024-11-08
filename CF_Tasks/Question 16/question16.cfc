<cfcomponent>
<cffunction  name = "printPat" returnType = "string">
    <cfset local.patt  = " ">
    <cfloop index = "i" from = "1" to = "3">
        <cfset local.patt  =  local.patt & i>
        <cfloop index = "j" from = "1" to = "2">
                <cfset local.patt  =  local.patt & " ">
                <cfset local.patt  =  local.patt & ( i + (3 * j))>
        </cfloop>
         <cfset local.patt  =  local.patt & "<br>">
    </cfloop>
    <cfreturn local.patt>
</cffunction>
</cfcomponent>
