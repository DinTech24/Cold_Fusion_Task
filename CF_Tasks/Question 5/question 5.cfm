
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
                        <input required type = "date" name = "userdob" placeholder = "Enter user's DOB" class = "w-75 mx-auto  mx-auto form-control border border-primary">
                        <input required type = "date" name = "motherdob" placeholder = "Enter mothers's DOB" class = "mt-3 w-75 mx-auto  mx-auto form-control border border-primary">
                        <input type = "submit" value = "Submit" class = "btn btn-primary my-auto mt-3">
                    </div>
                </form>
                <cfif structKeyExists(form,"userdob") AND structKeyExists(form,"motherdob")>
                    <cfset local.obj  =  new Component.question5()>
                    <cfset local.result  =  local.obj.findDates(form.userdob,form.motherdob)>
                    <div class = "w-25 mx-auto bg-dark rounded text-light mt-5  p-4">
                        <div class = "text-center d-grid">
                            <span>Age of User  =  #local.result[1]#</span>
                            <span>Age of Mother when delivered user  =  #local.result[2]#</span>
                            <span>Days yet for user's birthday  =  #local.result[3]#</span>
                            <span>Days yet for mother's birthday  =  #local.result[4]#</span>
                        </div>
                    </div> 
                </cfif>
            </cfoutput>
        </body>
    </html>

