<cfcomponent>
    <cffunction  name="isDivisible">
    <cfargument  name="argu" required="true">
      <cfset newList = "">
       <cfloop list="#arguments.argu#" item="i"> 
          <cfif i%3 EQ 0>
            <cfset #newList# = listAppend(#newList#, i,",")>
            <cfelse>
              <cfcontinue>
          </cfif>
       </cfloop>
       <cfreturn newList>
    </cffunction>
</cfcomponent>