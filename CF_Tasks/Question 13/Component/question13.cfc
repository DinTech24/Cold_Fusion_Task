<cfcomponent>
    <cffunction  name = "findWord" returnType = "string">
        <cfargument  name = "arg1">
        <cfset local.text  =  "the quick brown fox jumps over the lazy dog">
        <cfset local.num  =  listValueCount(local.text, arguments.arg1," ")>
        <cfreturn "Found the key word in #local.num# times - #local.text#">
    </cffunction>
</cfcomponent>