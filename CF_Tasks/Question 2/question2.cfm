<cfoutput>
    <!doctype HTML>
    <html lang='en'>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet" >
        </head>

        <body>
            <form action="" method="POST">
                <div class="mt-3 text-center">
                    <input name="inputVal" placeholder="Enter the number" type="number" class="w-75 mx-auto form-control border border-primary">
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
        </body>
    <html>
</cfoutput>