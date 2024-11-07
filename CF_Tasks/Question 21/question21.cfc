<cfcomponent>
    <cffunction  name = "sendWish">
        <cfargument  name = "arg1" type = "string">
        <cfargument  name = "arg2" type = "string">
        <cfargument  name = "arg3" type = "string">
        <cfargument  name = "arg4" type = "string">
        <cfmail  from="dinilthomas@techversantinfotech.com" password="DITj$24INm@29" port="465"  subject="birthday wishes"  to="#arguments.arg2#" mimeattach="#arguments.arg4#">
            <cfimage action="writeToBrowser" source="#arguments.arg4#">
            arguments.arg3
        </cfmail>
    </cffunction>
</cfcomponent>