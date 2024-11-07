<cfoutput>
    <!DOCTYPE html>
    <html lang = "en">
        <head>
            <meta charset = "UTF-8">
            <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
            <title>Document</title>
            <link href = "https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel = "stylesheet" integrity = "sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin = "anonymous"></head>
        </head>
        <body>
            <form action = "" method = "POST">
                <div class = "text-center mt-3 w-100">
                    <cfimage action = "captcha" text = "AmzdFG35A">
                    <cfset capText  =  "AmzdFG35A">
                    <input type = "text" name = "captcha" placeholder = "Enter the captcha" class = "w-50 mt-3 mx-auto form-control border border-success">
                    <input type = "email" name = "email" placeholder = "Enter email" class = "mt-3 w-50 mx-auto form-control border border-success">
                    <input value = "Submit" type = "submit" class = "w-25 btn btn-success my-auto mt-3">
                </div>
            </form>
            <cfif structKeyExists(form,"captcha") AND structKeyExists(form,"email")>
                <cfset local.obj  =  new question20()>
                <cfset local.result  =  local.obj.validateCaptcha(form.captcha,form.email,capText)>
                <div class = "w-25 mx-auto bg-dark -light mt-5 rounded-pill p-4">
                    <div class = "text-center text-light">#local.result#</div>
                </div> 
            </cfif>
        </body>
    </html>
</cfoutput>
