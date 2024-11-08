<cfcomponent>
    <cffunction  name="insertToDatabase">
        <cfargument  name="selectposition">
        <cfargument  name="relocateData">
        <cfargument  name="joiningdate">
        <cfargument default name="portfolio">
        <cfargument default name="resumeFile">
        <cfargument default name="salary">
        <cfargument default name="salaryCent">
        <cfargument  name="userName">
        <cfargument  name="emailAddress">
        <cfargument  name="phoneNumber">
        <cfdump  var="name">
        <cfset local.totalSalary = arguments.salary + (arguments.salaryCent/100)>
        <cfquery datasource="myData" name="query">
            insert into UserData values('#arguments.userName#',
                                '#arguments.phoneNumber#',
                                '#arguments.emailAddress#',
                                '#arguments.selectposition#',
                                '#arguments.relocateData#',
                                '#arguments.joiningdate#',
                                '#arguments.portfolio#',
                                 #local.totalSalary#,
                                '#arguments.resumeFile#');
        </cfquery>
        <cfdump  var="query">
    </cffunction>
</cfcomponent>