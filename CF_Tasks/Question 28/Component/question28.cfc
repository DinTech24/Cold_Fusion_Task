<cfcomponent>
    <cffunction  name="signUp" returnType="numeric">
        <cfargument  name="username" type="string">
        <cfargument  name="password" type="string">
        <cfargument  name="role" type="string">
        <cfquery datasource="myData" name="query">
            select count(username) as count from userDetails where username = '#arguments.username#'
        </cfquery>
        <cfset local.userPassword = hash("#arguments.password#", "SHA-256", "UTF-8")>
        <cfif query.count EQ 0>
            <cfquery datasource="myData" name="signupQuery">
                insert into userDetails(username,pwd,roleId) values ('#arguments.username#',
                                                                      '#local.userPassword#',
                                                                       '#arguments.role#')
            </cfquery>
        </cfif>
        <cfreturn query.count>
    </cffunction>
    
    <cffunction  name="logIn" returnType="numeric">
        <cfargument  name="username" type="string">
        <cfargument  name="password" type="string">
        <cfargument  name="role" type="string">
        <cfset local.userPassword = hash("#arguments.password#", "SHA-256", "UTF-8")>
        <cfquery datasource="myData" name="query">
            select count(username) as count from userDetails 
            where username = '#arguments.username#' 
            and pwd = '#local.userPassword#' 
            and roleId = '#arguments.role#';
        </cfquery>
        <cfif query.count EQ 1>
            <cfif NOT structKeyExists(session,username)>
                <cfset session.username = "#arguments.username#">
            </cfif>
        </cfif>
        <cfreturn query.count>
    </cffunction>

    <cffunction  name="displayPages" returnType="query">
        <cfquery name="display" datasource="myData">
            select pageid,pagename,pagedesc from pageDetails;
        </cfquery>
        <cfreturn display>
    </cffunction>

    <cffunction  name="addPage">
        <cfargument  name="pagename" type="string">
        <cfargument  name="pagedesc" type="string">
        <cfset local.pageCreatedDate = dateFormat(now(),"yyyy-mm-dd")>
        <cfquery datasource="myData" name="insertpage">
            insert into pageDetails(pagename,pagedesc,_createdBy,_createdOn) 
            values ('#arguments.pagename#','#arguments.pagedesc#','#session.username#','#local.pageCreatedDate#')
        </cfquery>
    </cffunction>

    <cffunction  name="deletePage" returntype="numeric">
        <cfargument name="pageid" type="numeric">
        <cfquery datasource="myData" name="delpage">
            delete from pageDetails where pageid = #arguments.pageid#;
        </cfquery>
        <cfreturn #arguments.pageid#>
    </cffunction>
    
    <cffunction name="editPage">
        <cfargument name="pageid" type="numeric">
        <cfargument name="pagename" type="string">
        <cfargument name="pagedesc" type="string">
        <cfquery datasource="myData" name="delpage">
            update pageDetails set pagename = '#arguments.pagename#',pagedesc = '#arguments.pagename#' where pageid = #arguments.pageid#;
        </cfquery>
    </cffunction>

    <cffunction  name="logOutPage" access="remote">
        <cfset sessionInvalidate()>
        <cflocation url="../index.cfm">
        <cfreturn true>
    </cffunction>

</cfcomponent>