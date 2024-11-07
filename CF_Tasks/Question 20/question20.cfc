<cfcomponent>
    <cffunction  name = "validateCaptcha" returnType = "string">
        <cfargument  name = "captcha">
        <cfargument  name = "email" type = "email">
        <cfargument  name = "capText">
        <cfset local.emailValid  =  isValid("regular_expression", arguments.email,"[A-Za-z0-9\._%+\-]+@[A-Za-z0-9\.\-]+\.[A-Za-z]{2,}")>
        <cfif local.emailValid EQ true>
            <cfif arguments.captcha EQ arguments.capText>
                <cfset local.warn  =  "Email Address successfully subscribe our newsletter">
                <cfelse>
                    <cfset local.warn  =  "Incorrect Captcha">
            </cfif>
            <cfelse>
                <cfset local.warn  =  "Incorrect Email">
        </cfif>
        <cfreturn local.warn>
    </cffunction>
</cfcomponent>