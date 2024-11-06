<cfcomponent>
    <cffunction  name = "findWord" returnType = "string">
        <cfargument  name = "arg1">
        <cfset text  =  "the quick brown fox jumps over the lazy dog">
        <cfset num  =  listValueCount(text, arguments.arg1," ")>
        <cfreturn "Found the key word in #num# times - #text#">
    </cffunction>
</cfcomponent>