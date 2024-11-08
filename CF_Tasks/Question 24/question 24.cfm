<cfapplication name = "applicationName" sessionmanagement = "Yes">
<cfoutput>
    <!DOCTYPE html>
    <html lang = "en">
    <head>
        <meta charset = "UTF-8">
        <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
        <title>Document</title>
        <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet" >
    </head>
        <body>
            <form action = "" method = "POST"> 
                <div class = "text-center mt-3 w-75 mt-5 p-5 mx-auto border border-dark rounded">
                    <h3 class="mb-4">SUBSCRIPTION FORM</h3> 
                    <input type = "text" name = "firstName" placeholder = "Enter your first name" class = "w-50 mx-auto  mx-auto form-control border border-primary">
                    <div class="d-flex justify-content-center mt-3 w-50 mx-auto ">
                        <input type = "email" name = "email" placeholder = "Enter your email-id" class = "me-1  form-control border border-primary">
                        <button type = "button" class = "btn btn-success" name = "vaildateButton">verify</button>
                    </div>
                    <button type = "submit" name = "enterData" class = "btn btn-primary my-auto mt-3 w-50">Submit</button>
                </div>
            </form>

            <cfset local.result = true>
            <cfif structKeyExists(form,"vaildateButton")>
                <cfset local.obj  =  new question24()>
                <cfset local.result  =  local.obj.verifyEmail(form.firstName,form.email)>
                <cfif local.result EQ true>
                    <div class = "w-25 mx-auto text-danger fw-bold mt-2 ">
                        <div class = "text-center">Mail id is already there</div>
                    </div>
                    <cfelse>
                        <cfif structKeyExists(form,"enterData")>
                            <cfif local.result EQ true>
                                <div class = "w-25 mx-auto text-danger fw-bold mt-2">
                                    <div class = "text-center">Verify your email first</div>
                                </div>
                                <cfelse>
                                    <cfset local.obj  =  new question24()>
                                    <cfset local.result  =  local.obj.detailsEntry(form.firstName,form.password)>
                            </cfif>
                        </cfif>
                </cfif>
            </cfif>
        </body>
    </html>
</cfoutput>
