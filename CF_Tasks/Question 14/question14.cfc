<cfcomponent>
    <cffunction  name = "filesUpload" returnType = "any">
        <cfargument  name = "file">
        <cfargument  name = "imageName">
        <cfset resizedImg  = imageNew("#arguments.file#")>
        <cfset imageResize(resizedImg,"20","20",2)>
        <cfimage source="#myImage#" action="writeToBrowser" source="#resizedImg#" >
        <cfdump  var="resizedImg">
    </cffunction>
</cfcomponent>