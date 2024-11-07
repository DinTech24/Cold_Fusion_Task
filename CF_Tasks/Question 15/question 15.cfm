<cfoutput>
    <cfset local.obj1  =  createObject("component","question15")>
    <cfset local.result1  =  obj1.multiply(1,2)>
    <cfobject name = "obj2" type = "component" component = "question15">
    <cfset local.result2  =  obj2.multiply(1,2,3)>
    <cfinvoke  method = "multiply" component = "question15" returnvariable = "valueInvoke">
        <cfinvokeargument name = "value1" value = "1">
        <cfinvokeargument name = "value2" value = "2"> 
        <cfinvokeargument name = "value3" value = "3"> 
        <cfinvokeargument name = "value4" value = "4">
    </cfinvoke> 
    <span class = "fw-bold">
        Using CreateObject : #local.result1# <br>
        Using cfobject : #local.result2# <br>
        Using cfInvoke : #valueInvoke# 
    </span>
</cfoutput>
