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
                    <input type="date" name="userdob" placeholder="Enter user's DOB" class="w-75 mx-auto  mx-auto form-control border border-primary">
                    <input type="date" name="motherdob" placeholder="Enter mothers's DOB" class="mt-3 w-75 mx-auto  mx-auto form-control border border-primary">
                    <input type="submit" value="Submit" class="btn btn-primary my-auto mt-3">
                </div>
            </form>
            <cfif structKeyExists(form,"userdob") AND structKeyExists(form,"motherdob")>
                <cfset obj = new question5()>
                <cfset result = obj.findDates(form.userdob,form.motherdob)>
                <div class="w-25 mx-auto bg-dark text-light mt-5 rounded-pill p-4">
                    <div class="text-center d-grid">
                        <span>Age of User = #result[1]#</span>
                        <span>Age of Mother when delivered user = #result[2]#</span>
                        <span>Days yet for user's birthday = #result[3]#</span>
                        <span>Days yet for mother's birthday = #result[4]#</span>
                    </div>
                </div> 
            </cfif>
        </body>
    </html>
</cfoutput>
