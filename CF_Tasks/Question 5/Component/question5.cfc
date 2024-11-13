<cfcomponent>
    <cfset local.arr1  =  ArrayNew(1)>
    <cffunction  name = "findDates">
    <cfargument  name = "argu1" type = "date">
    <cfargument  name = "argu2" type = "date">
    <cfset local.userdb  =  arguments.argu1>
    <cfset local.motherdb  =  arguments.argu2 >
    <cfset local.userage  = dateDiff("yyyy", local.userdb,now())>
    <cfset local.motherage  = dateDiff("yyyy", local.motherdb,now())>
    <cfset local.motherdm  =  DayOfYear(local.motherdb)>
    <cfset local.dayToday  =  dayOfYear(now())>
    <cfif local.motherdm GT local.dayToday>
        <cfset local.motherdays  =  local.motherdm - local.dayToday>
        <cfelse>
            <cfset local.motherdays  =   365 + (local.motherdm - local.dayToday)>
    </cfif>
    <cfset local.userdm  =  DayOfYear(local.userdb)>
    <cfset local.dayToday  =  dayOfYear(now())>
    <cfif local.userdm GT dayToday>
            <cfset local.userdays  =  local.userdm - local.dayToday>
        <cfelse>
            <cfset local.userdays  =  365 + (local.userdm - local.dayToday)>
    </cfif>
    <cfset local.userday  =  dateDiff("d",now(),local.userdb)>
    <cfset local.motherday  =  dateDiff("d",now(),local.motherdb)> 
    <cfset local.arr1[1]  =  local.userage>
    <cfset local.arr1[2]  =  local.motherage-local.userage>
    <cfset local.arr1[3]  =  local.userdays>
    <cfset local.arr1[4]  =  local.motherdays>
    <cfreturn local.arr1>
    </cffunction>
</cfcomponent>