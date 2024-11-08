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
    <cfset result = obj.printDates()>
    <div class="w-25 mx-auto bg-dark text-light mt-5 rounded-pill p-4">
        <div class="text-center d-grid">
            <span>Today's Date = #result#</span>
        </div>
    </div> 

</body>
</html>
</cfoutput>

