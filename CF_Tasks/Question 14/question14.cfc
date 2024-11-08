<cfcomponent>
    <cffunction  name="filesUpload" returnType="any">
        <cfargument  name="file">
        <cfargument  name="imageName">
        <cfset resizedImg = arguments.file>
        <cfset imageResize( resizedImg, "20", "20")>
        <cfreturn resizedImg>
        <cfdump  var="#resizedImg#">
    </cffunction>
</cfcomponent>