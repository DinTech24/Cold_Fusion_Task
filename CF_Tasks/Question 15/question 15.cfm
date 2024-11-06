<cfoutput>
    <cfset obj1  =  createObject("component","question15")>
    <cfset result1  =  obj1.multiply(1,2)>
    <cfobject  name = "obj2" type = "component" component = "question15">
    <cfset result2  =  obj2.multiply(1,2,3)>
    <cfinvoke  method = "multiply" component = "question15" returnvariable = "valueInvoke">
        <cfinvokeargument name = "val1" value = "1">
        <cfinvokeargument name = "val2" value = "2"> 
        <cfinvokeargument name = "val3" value = "3"> 
        <cfinvokeargument name = "val4" value = "4">
    </cfinvoke> 
    <span class = "fw-bold">
        Using CreateObject : #result1# <br>
        Using cfobject : #result2# <br>
        Using cfInvoke : #valueInvoke# 
    </span>
</cfoutput>
