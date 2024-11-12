<cfcomponent>
    <cffunction  name = "printDates" returnType = "struct">
        <cfset local.tdate  =  dateFormat(now(),"dd/mm/yyy")>
        <cfset local.cmonth  =  dateFormat(now(),"mm")>
        <cfset local.cmonthWor  =  dateFormat(now(),"mmmm")>
        <cfset local.fromDate  =  Now() - 7>  
        <cfset local.toDate  =  Now()>
        <cfset local.struct1  =  structNew()>
        <cfloop from = "#fromDate#" to = "#toDate#" index = "i">
            <cfif dateformat(i, "ddd") EQ "fri">
                <cfset local.lastFriday  =  dateformat(i, "dd/mm/yyyy")>
            </cfif>
        </cfloop>
        <cfset local.struct1["Today's date"]  =  tdate> 
        <cfset local.struct1["Current Month in numeric"]  =  cmonth>
        <cfset local.struct1["Current month in word"]  =  cmonthWor>
        <cfset local.struct1["Last Friday"]  =  lastFriday>
        <cfset local.struct1["Last day of month"]  =  lastFriday>
        <cfreturn struct1>
    </cffunction>

    <cffunction  name = "printAllDates">
        <cfset local.obje  =  { "monday":"green",
                        "tuesday":"orange",
                        "wednesday":"yellow",
                        "thursday":"black",
                        "friday":"blue",
                        "saturday":"blue",
                        "sunday":"red"
                    }>
        <cfset local.struct2  =  structNew()>
        <cfset local.yest  =  Now() - 1 >
        <cfset local.alldates  =  Now() - 5>
        <cfloop from = "#alldates#" to = "#yest#" index = "i">
            <cfset local.dat  =  #dateformat(i, "dd-mm-yyyy-dddd")#>
            <cfset local.struct2[dat]  =  obje[dateFormat(i,"dddd")]>
        </cfloop>
        <cfreturn local.struct2>
    </cffunction>
</cfcomponent>