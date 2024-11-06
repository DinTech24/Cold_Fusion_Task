<cfcomponent>
    <cffunction  name = "isDivisible" returnType = "srtring">
    <cfargument  name = "argu" type="numeric" required = "true">
      <cfset newList  =  "">
       <cfloop list = "#arguments.argu#" item = "i"> 
          <cfif i%3 EQ 0>
            <cfset #newList#  =  listAppend(#newList#, i,",")>
            <cfelse>
              <cfcontinue>
          </cfif>
       </cfloop>
       <cfreturn newList>
    </cffunction>
</cfcomponent>