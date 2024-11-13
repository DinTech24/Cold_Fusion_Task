<cfcomponent>
    <cffunction  name = "sendWish" returnType="string">
        <cfargument  name = "name" type = "string">
        <cfargument  name = "mail" type = "email">
        <cfargument  name = "wish" type = "string">
        <cfargument  name = "image">
        <cfset local.emailValid  =  isValid("regular_expression", arguments.mail,"[A-Za-z0-9\._%+\-]+@[A-Za-z0-9\.\-]+\.[A-Za-z]{2,}")>
        <cfif local.emailValid EQ true>
            <cfmail  from = "dinilvallikunnil@gmail.com" password="Di@Gmailnil" port="25"  subject="birthday wishes"  to="#arguments.mail#" mimeattach="#arguments.image#">
                #arguments.wish#
                <cfimage action="writeToBrowser" source="#arguments.image#">
            </cfmail>
            <cfset local.warn = "Mail Sent Succefully">
            <cfelse>
                <cfset local.warn = "Incrorrect Email">
        </cfif>
        <cfreturn local.warn>
    </cffunction>
</cfcomponent>