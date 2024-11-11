
    <!DOCTYPE html>
    <html lang = "en">
        <head>
            <meta charset = "UTF-8">
            <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
            <title>Document</title>
            <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet" >
        </head>
        <body>
        <cfoutput>
                <form action = "" method = "POST">
                    <div class = "text-center mt-3 w-100">
                        <input type = "text" name = "key" placeholder = "Enter the key" class = "w-75 mx-auto  mx-auto form-control border border-primary">
                        <input type = "text" name = "val" placeholder = "Enter it's value" class = "mt-3 w-75 mx-auto  mx-auto form-control border border-primary">
                        <input type = "submit" value = "Submit" class = "btn btn-primary my-auto mt-3">
                    </div>
                </form>
                <cfif structKeyExists(form,"key") AND structKeyExists(form,"val")>
                    <cfset local.obj  =  new question6()>
                    <cfset local.result  =  obj.dumpStr(form.key,form.val)>
                    <cfdump  local.var = "#local.result#">
                </cfif>
            </cfoutput>
        </body>
    </html>

