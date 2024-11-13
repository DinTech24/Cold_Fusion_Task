<cfcomponent>
    <cffunction  name = "sendCookie" returntype = "numeric">
       <cfif NOT structKeyExists(cookie,"VisitsCounter")>
            <cfcookie  name = "VisitsCounter">
            <cfset cookie.VisitsCounter  =  0>
       </cfif> 
        <cfset cookie.VisitsCounter  =  cookie.VisitsCounter + 1>
        <cfreturn cookie.VisitsCounter>
    </cffunction>
</cfcomponent>