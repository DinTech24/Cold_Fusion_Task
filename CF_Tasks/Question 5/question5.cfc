<cfcomponent>
    <cfset arr1 = ArrayNew(1)>
    <cffunction  name="findDates">
    <cfargument  name="argu1" type="date">
    <cfargument  name="argu2" type="date">
    <cfset userdb = arguments.argu1>
    <cfset motherdb = arguments.argu2 >
    <cfset userage =dateDiff("yyyy", userdb,now())>
    <cfset motherage =dateDiff("yyyy", motherdb,now())>
    <cfset motherdm = DayOfYear(motherdb)>
    <cfset dayToday = dayOfYear(now())>
    <cfif motherdm GT dayToday>
        <cfset motherdays = motherdm - dayToday>
        <cfelse>
            <cfset motherdays =  365 + (motherdm - dayToday)>
    </cfif>
    <cfset userdm = DayOfYear(userdb)>
    <cfset dayToday = dayOfYear(now())>
    <cfif userdm GT dayToday>
            <cfset userdays = userdm - dayToday>
        <cfelse>
            <cfset userdays = 365 + (userdm - dayToday)>
    </cfif>
    <cfset userday = dateDiff("d",now(),userdb)>
    <cfset motherday = dateDiff("d",now(),motherdb)> 
    <cfset arr1[1] = userage>
    <cfset arr1[2] = motherage-userage>
    <cfset arr1[3] = userdays>
    <cfset arr1[4] = motherdays>
    <cfreturn arr1>
    </cffunction>
</cfcomponent>