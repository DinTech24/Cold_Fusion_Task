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
            <form action = "" method = "POST" enctype = "multipart/form-data">
                <div class = "text-center mt-3 w-100">
                    <input type = "text" name = "personName" placeholder = "Enter birthday Baby Name" class = "w-50 mx-auto  mx-auto form-control border border-success">
                    <input type = "email" name = "personMail" placeholder = "Enter his mail-id" class = "mt-3 w-50 mx-auto  mx-auto form-control border border-success">
                    <textarea type = "text" name = "birthdayWish" placeholder = "Enter Birthday Wish" class = "mt-3 w-50 mx-auto  mx-auto form-control border border-success"></textarea>
                    <input type = "file" name = "imageFile" id = "fileData" class = "mt-3 w-50 mx-auto  mx-auto form-control border border-success">
                    <input value = "Submit" name = "formButton" type = "submit" class = "w-25 btn btn-success my-auto mt-3">
                    <div id = "inner"><div>
                </div>
            </form>

            <cfif structKeyExists(form, "formButton")>
                <cfset obj  =  new question21()>
                <cfset result  =  obj.sendWish(form.personName,form.personMail,form.birthdayWish,form.imageFile)>
            </cfif>
        </body>
    </html>
</cfoutput>