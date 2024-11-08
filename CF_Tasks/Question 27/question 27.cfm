<cfapplication name = "applicationName" sessionmanagement = "Yes">
<cfoutput>
    <!DOCTYPE html>
    <html lang = "en">
    <head>
        <meta charset = "UTF-8">
        <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
        <title>Document</title>
        <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet">
    </head>
        <body>
            <form action = "" method = "POST"> 
                <div class = "text-center mt-3 w-75 mt-5 p-5 mx-auto border border-dark">
                    <h2 class="mb-4">LOGIN PAGE</h2> 
                    <input type = "text" name = "userName" placeholder = "Enter your username" class = "w-50 mx-auto  mx-auto form-control border border-primary">
                    <input type = "password" name = "password" placeholder = "Enter the password" class = "mt-3 w-50 mx-auto  mx-auto form-control border border-primary">
                    <input type = "submit" value = "Login" class = "btn btn-primary my-auto mt-3 w-50">
                </div>
            </form>
            <cfif structKeyExists(form,"userName") AND structKeyExists(form,"password")>
                <cfset local.obj  =  new question27()>
                <cfset local.result  =  local.obj.login(form.userName,form.password)>
                <cfif local.result EQ false>
                    <div class = "w-25 mx-auto text-danger fw-bold mt-2 rounded-pill p-4">
                        <div class = "text-center">Invalid User! check your credentials</div>
                    </div>
                </cfif>
                <cfif local.result EQ true>
                    <cflocation  url="welcome.cfm">
                </cfif>
            </cfif>
        </body>
    </html>
</cfoutput>
