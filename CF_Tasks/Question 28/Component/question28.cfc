<cfcomponent>
    <cffunction  name="signUp" returnType="any">
        <cfargument  name="username">
        <cfargument  name="password">
        <cfargument  name="role">
        <cfquery datasource="myData" name="query">
            select count(username) as count from userDetails where username = '#arguments.username#'
        </cfquery>
        <cfquery datasource="myData" name="rowlength">
            select count(username) as leng from userDetails
        </cfquery>
        <cfset local.lenVal = rowlength.leng>
        <cfif query.count EQ 0>
            <cfquery datasource="myData" name="signupQuery">
                insert into userDetails values(#local.lenVal + 1#,'#arguments.username#','#arguments.password#','#arguments.role#')
            </cfquery>
        </cfif>
        <cfreturn query.count>
    </cffunction>
    
    <cffunction  name="logIn" returnType="any">
        <cfargument  name="username">
        <cfargument  name="password">
        <cfargument  name="role">
        <cfquery datasource="myData" name="query">
            select count(username) as count from userDetails where 
            username = '#arguments.username#' and passwords = '#arguments.password#' and roles = '#arguments.role#';
        </cfquery>
        <cfif query.count EQ 1>
            <cfif NOT structKeyExists(session,username)>
                <cfset session.username = "#arguments.username#">
            </cfif>
        </cfif>
        <cfreturn query.count>
    </cffunction>

    <cffunction  name="displayPages">
        <cfquery name="display" datasource="myData">
            select pageid,pagename,pagedesc from pageDetails;
        </cfquery>
        <cfreturn display>
    </cffunction>

    <cffunction  name="addPage">
        <cfargument  name="pagename">
        <cfargument  name="pagedesc">
        <cfquery datasource="myData" name="rowlength">
            select count(pagename) as leng from pageDetails;
        </cfquery>
        <cfset local.lenVal = rowlength.leng>
        <cfquery datasource="myData" name="insertpage">
            insert into pageDetails values(#local.lenVal + 1#,'#arguments.pagename#','#arguments.pagedesc#')
        </cfquery>
    </cffunction>

    <cffunction  name="deletePage" returntype="numeric">
        <cfargument name="pageid">
        <cfquery datasource="myData" name="delpage">
            delete from pageDetails where pageid = #arguments.pageid#;
        </cfquery>
        <cfreturn #arguments.pageid#>
    </cffunction>
    
    <cffunction name="editPage" >
        <cfargument name="pageid">
        <cfargument name="pagename">
        <cfargument name="pagedesc">
        <cfquery datasource="myData" name="delpage">
            update pageDetails set pagename = '#arguments.pagename#',pagedesc = '#arguments.pagename#' where pageid = #arguments.pageid#;
        </cfquery>
    </cffunction>
</cfcomponent>