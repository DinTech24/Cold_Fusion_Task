<cfapplication name = "applicationName" sessionmanagement = "Yes">
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
                <cfif NOT structKeyExists(session, "userName")>
                    <cflocation  url="question 27.cfm">
                </cfif>
                <form action = "" method = "POST"> 
                    <div class = "text-center mt-3 w-75 mt-5 p-5 mx-auto border border-dark">
                        <h2 class="mb-4">WELCOME USER</h2> 
                        <button class="btn btn-danger" name="logoutButton" type="submit">Logout</button>
                    </div>
                    <cfif structKeyExists(form, "logoutButton")>
                        <cfset sessionInvalidate()>
                        <cflocation  url="question 27.cfm">
                    </cfif>
                </form>
            </cfoutput>
        </body>
    </html>
