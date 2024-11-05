<cfcomponent>
    <cffunction  name="printDates">
        <cfset tdate = dateFormat(now(),"dd/mm/yyy")>
        <cfset cmonth = dateFormat(now(),"mm")>
        <cfset cmonthWor = dateFormat(now(),"mmmm")>
        <cfset fromDate = Now() - 7>  
        <cfset toDate = Now()>
        <cfset struct1 = structNew()>
        <cfloop from="#fromDate#" to="#toDate#" index="i"> 
            <cfif dateformat(i, "ddd") EQ "fri">
                <cfset lastFriday = dateformat(i, "dd/mm/yyyy")>
            </cfif>
        </cfloop>
        <cfset struct1["Today's date"] = tdate> 
        <cfset struct1["Current Month in numeric"] = cmonth>
        <cfset struct1["Current month in word"] = cmonthWor>
        <cfset struct1["Last Friday"] = lastFriday>
        <cfset struct1["Last day of month"] = lastFriday>
        <cfreturn struct1>
    </cffunction>

    <cffunction  name="printAllDates">
        <cfset obje = { "monday":"green",
                        "tuesday":"orange",
                        "wednesday":"yellow",
                        "thursday":"black",
                        "friday":"blue",
                        "saturday":"blue",
                        "sunday":"red"
                    }>
        <cfset struct2 = structNew()>
        <cfset yest = Now() - 1 >
        <cfset alldates = Now() - 5>
        <cfloop from="#alldates#" to="#yest#" index="i"> 
            <cfset dat = #dateformat(i, "dd-mm-yyyy-dddd")#>
            <cfset struct2[dat] = obje[dateFormat(i,"dddd")]>
        </cfloop>
        <cfreturn struct2>
    </cffunction>
</cfcomponent>