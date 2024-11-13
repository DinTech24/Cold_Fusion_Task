<cfapplication name = "appli" sessionmanagement = "Yes">
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
                        <input type = "submit" value = "Submit" class = "btn btn-primary my-auto mt-3">
                    </div>
                </form>
                <cfset local.obj  =  new Component.question19()>
                <cfset local.result  =  local.obj.sendCookie()>
                #local.result#
            </cfoutput>
        </body>
    </html>
