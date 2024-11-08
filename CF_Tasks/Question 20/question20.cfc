<cfcomponent>
    <cffunction  name = "validateCaptcha" returnType = "string">
        <cfargument  name = "captcha">
        <cfargument  name = "email" type = "email">
        <cfargument  name = "capText">
        <cfset emailValid  =  isValid("regular_expression", arguments.email,"[A-Za-z0-9\._%+\-]+@[A-Za-z0-9\.\-]+\.[A-Za-z]{2,}")>
        <cfif emailValid EQ true>
            <cfif arguments.captcha EQ arguments.capText>
                <cfset warn  =  "Email Address successfully subscribe our newsletter">
                <cfelse>
                    <cfset warn  =  "Incorrect Captcha">
            </cfif>
            <cfelse>
                <cfset warn  =  "Incorrect Email">
        </cfif>
        <cfreturn warn>
    </cffunction>
</cfcomponent>