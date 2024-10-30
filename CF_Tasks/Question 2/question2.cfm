<cfoutput>
    <!doctype HTML>
    <html lang='en'>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"></head>
        </head>

        <body>
            <form action="" method="POST">
                <div class="mt-3 text-center">
                    <input name="inputVal" type="number" class="w-75 mx-auto form-control border border-primary">
                    <input type="submit" value="Submit" class="btn btn-primary  mt-3">
                </div>
            </form> 
            <cfif structKeyExists(form,"inputVal") AND len(form.inputVal) GT 0>
                <cfset obje = new question2()>
                <cfset local.result = obje.switchCase(form.inputVal)>
                <div class="w-25 mx-auto bg-dark text-light mt-5 rounded-pill p-4">
                    <div class="text-center">#local.result#</div>
                </div> 
            </cfif>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        </body>
    <html>
</cfoutput>