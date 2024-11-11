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
                        <textarea name = "text" placeholder = "Enter the string" class = "w-25 mx-auto  mx-auto form-control border border-success"></textarea>
                        <input type = "submit" value = "Submit" name="submitButton" class = "btn btn-primary my-auto mt-3 w-25">
                    </div>
                </form>
                <cfif structKeyExists(form,"submitButton")>
                    <cfset local.obj  =  new tagCloud()>
                    <cfset local.result  =  local.obj.changeFont(form.text)>
                    <div class = "w-25 mx-auto mt-5 rounded-pill p-4">
                        <div class = "text-center">
                            <cfset fontSize = 12>
                            <cfloop collection="#local.result#" item="item">
                                <div class="d-flex justify-content-between">
                                    <span style="font-size:#fontSize + (5 * local.result[item])#px;">#item#</span>
                                    <span>#local.result[item]#</span>
                                </div>
                            </cfloop>
                        </div>
                    </div> 
                </cfif>
            </cfoutput>
        </body>
    </html>

