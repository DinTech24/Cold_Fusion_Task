<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <cfset obj =  new question4()>
    <cfset result1 = obj.printDates()>
<!---     <cfset object =  new question4()>
    <cfset result2 = obj.printAllDates()> --->
    <div class="w-25 mx-auto bg-dark text-light mt-5 rounded-pill p-4">
        <div class="text-center d-grid">
            <cfloop collection="#result1#" item="i">
                <span>#result1[i]#</span><br>
            </cfloop>
        </div>
<!---     <div class="text-center d-grid">
            <cfloop collection="#result2#" item="i">
                <span>#result2[i]#</span><br>
            </cfloop> 
        </div> --->
    </div>
</body>
</html>
</cfoutput>

