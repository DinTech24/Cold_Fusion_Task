<cfcomponent>
    <cffunction  name="signUp" returnType="numeric">
        <cfargument  name="username" type="string">
        <cfargument  name="password" type="string">
        <cfargument  name="role" type="string">
        <cfquery name="query">
            select count(username) as count from userDetails where username = '#arguments.username#'
        </cfquery>
        <cfset local.userPassword = hash("#arguments.password#", "SHA-256", "UTF-8")>
        <cfif query.count EQ 0>
            <cfquery name="signupQuery">
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
        <cfquery name="query">
            select count(username) as count from userDetails 
            where username = '#arguments.username#' 
            and pwd = '#local.userPassword#' 
            and roleId = '#arguments.role#';
        </cfquery>
        <cfquery name="roleQuery" datasource="myData">
            select roles from rolesTable left join userDetails 
            on rolesTable.roleId = userDetails.roleId 
            where rolesTable.roleId = '#arguments.role#' 
            and userDetails.username = '#arguments.username#';
        </cfquery>
        <cfif query.count EQ 1>
            <cfif NOT structKeyExists(session,username)>
                <cfset session.username = "#arguments.username#">
                <cfset session.role = "#roleQuery.roles#">
                <cfset session.login = true>
            </cfif>
        </cfif>
        <cfreturn query.count>
    </cffunction>

    <cffunction  name="displayPages" returnType="query">
        <cfquery name="display" >
            select pageid,pagename,pagedesc,_createdBy,_createdOn from pageDetails where _createdBy = '#session.username#';
        </cfquery>
        <cfreturn display>
    </cffunction>

        <cffunction  name="displayUserPages" returnType="query">
        <cfquery name="display">
            select pageid,pagename,pagedesc,_createdBy,_createdOn from pageDetails;
        </cfquery>
        <cfreturn display>
    </cffunction>

    <cffunction  name="addPage" returntype="numeric">
        <cfargument  name="pagename" type="string">
        <cfargument  name="pagedesc" type="string">
        <cfset local.pageCreatedDate = dateFormat(now(),"yyyy-mm-dd")>
        <cfquery name="addpageQuery">
            select count(pagename) as count from pageDetails where pagename = '#arguments.pagename#'
        </cfquery>
        <cfif addpageQuery.count EQ 1>
            <cfreturn addpageQuery.count>
            <cfelse>
                <cfquery name="insertpage">
                    insert into pageDetails(pagename,pagedesc,_createdBy,_createdOn) 
                    values ('#arguments.pagename#','#arguments.pagedesc#','#session.username#','#local.pageCreatedDate#')
                </cfquery>
                <cfreturn addpageQuery.count>
        </cfif>
    
    </cffunction>

    <cffunction  name="deletePages" access="remote">
        <cfargument name="pageid" type="string">
        <cfquery name="delpage">
            delete from pageDetails where pageid = '#arguments.pageid#';
        </cfquery>
        <cfreturn true>
    </cffunction>
    
    <cffunction name="editPage" returntype="numeric">
        <cfargument name="pageid" type="string">
        <cfargument name="pagename" type="string">
        <cfargument name="pagedesc" type="string">
        <cfquery name="editPageQuery">
            select count(pagename) as count from pageDetails where pagename = '#arguments.pagename#'
        </cfquery>
        <cfif editPageQuery.count EQ 1>
            <cfreturn editPageQuery.count>
            <cfelse>
            <cfquery name="editpage">
                update pageDetails set pagename = '#arguments.pagename#',
                                    pagedesc = '#arguments.pagedesc#',
                                    _updatedBy = '#session.username#',
                                    _updatedOn = '#dateFormat(now(),"yyyy-mm-dd")#' 
                                    where pageid = '#arguments.pageid#';
            </cfquery>
            <cfreturn editPageQuery.count>
        </cfif>
    </cffunction>

    <cffunction  name="logOutPage" access="remote" returnType="boolean">
        <cfset structDelete(session,"login")>
        <cfreturn true>
    </cffunction>

</cfcomponent>