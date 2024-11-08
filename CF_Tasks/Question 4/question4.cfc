<cfcomponent>
    <cffunction  name="printDates">
        <cfset tdate = dateFormat(now(),"dd/mm/yyy")>
        <cfset cmonth = dateFormat(now(),"mm")>
        <cfset cmonthWor = dateFormat(now(),"mmmm")>
        <cfset fromDate = Now() - 7>  
        <cfset toDate = Now()>
        <cfset alldates = Now() - 4>
        <cfset obje = { "monday":"green",
                        "tuesday":"orange",
                        "wednesday":"yellow",
                        "thursday":"black",
                        "friday":"blue",
                        "saturday":"blue",
                        "sunday":"red",
                      }>
        <cfloop from="#fromDate#" to="#toDate#" index="i"> 
            <cfif dateformat(i, "ddd") EQ "fri">
                <cfset lastFriday = dateformat(i, "dd/mm/yyyy")>
            </cfif>
        </cfloop>
        <cfloop from="#alldates#" to="#toDate#" index="i"> 
            <cfset dat = #dateformat(i, "dd-mm-yyyy-dddd")#>
            <cfreturn dat> 
        </cfloop>
    </cffunction>
</cfcomponent>