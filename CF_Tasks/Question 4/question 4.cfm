<!DOCTYPE html>
<html lang = "en">
    <head>
        <meta charset = "UTF-8">
        <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
        <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet" >
        <title>Document</title>
    </head>
    <body>
        <cfoutput>
            <cfset local.obj  =   new Component.question4()>
            <cfset local.result1 = local.obj.printDates()>
            <cfset local.object =  new Component.question4()>
            <cfset local.result2 = local.obj.printAllDates()>
            <div class = "w-25 mx-auto bg-dark text-light mt-5 rounded-pill p-4">
                <div class = "text-center d-grid">
                    <cfloop collection = "#local.result1#" item = "i">
                        <span>#i# : #local.result1[i]#</span><br>
                    </cfloop>
                </div>
            <div class = "text-center d-grid">
                    <cfloop collection = "#local.result2#" item = "i">
                        <span style = "color:#local.result2[i]#;">#i#</span><br>
                    </cfloop> 
                </div>
            </div>
        </cfoutput>
    </body>
</html>


