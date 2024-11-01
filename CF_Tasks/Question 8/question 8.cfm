<cfapplication name="appli" sessionmanagement="Yes">
<cfoutput>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"></head>
    </head>
        <body>
            <form action="" method="POST">
                <div class="text-center mt-3 w-100">
                    <input type="text" name="key" placeholder="Enter the key" class="w-75 mx-auto  mx-auto form-control border border-primary">
                    <input type="text" name="val" placeholder="Enter it's value" class="mt-3 w-75 mx-auto  mx-auto form-control border border-primary">
                    <input type="submit" value="Submit" class="btn btn-primary my-auto mt-3">
                </div>
            </form>
            <cfif structKeyExists(form,"key") AND structKeyExists(form,"val")>
                <cfset obj = new question7()>
                <cfset result = obj.dumpStr(form.key,form.val)>
            </cfif>
        </body>
    </html>
</cfoutput>
