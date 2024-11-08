<cfoutput>
<!DOCTYPE HTML>
    <html>
        <head>
            <meta charset = "UTF-8">
            <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
            <title>Document</title>
            <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet" >

        </head>
        <body>
            <form action = "" method = "POST">
                <div class = "text-center mt-3 w-100">
                    <input type = "text" placeholder = "Enter Input" name = "inputval" class = "w-75 mx-auto  mx-auto form-control border border-primary">
                    <input type = "submit" value = "Submit" class = "btn btn-primary my-auto mt-3">
                </div>
            </form>
            <cfif structKeyExists(form, "inputval")> 
                <cfset local.newObject  =  new question3()>
                <cfset local.funVal  =  local.newObject.isDivisible(form.inputval)>
                <div class = "w-25 mx-auto bg-dark text-light mt-5 rounded-pill p-4">
                    <div class = "text-center">#local.funVal#</div>
                </div> 
            </cfif> 
        </body>
    </html>
</cfoutput>
