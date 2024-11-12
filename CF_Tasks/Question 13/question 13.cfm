
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
                        <input type = "text" name = "word" placeholder = "Enter the keyword" class = "w-75 mx-auto  mx-auto form-control border border-primary">
                        <input type = "submit" value = "Submit" class = "btn btn-primary my-auto mt-3 w-25">
                    </div>
                </form>
                <cfif structKeyExists(form,"word")>
                    <cfset local.obj  =  new Component.question13()>
                    <cfset local.result  =  local.obj.findWord(form.word)>
                    <div class = "w-25 mx-auto bg-dark text-light mt-5 rounded-pill p-4">
                        <div class = "text-center">#local.result#</div>
                    </div> 
                </cfif>
            </cfoutput>
        </body>
    </html>

