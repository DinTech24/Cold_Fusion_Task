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

                <form action = "" method = "POST"> 
                    <div class = "text-center mt-3 w-75 mt-5 p-5 mx-auto border border-dark rounded">
                        <h3 class="mb-4">SUBSCRIPTION FORM</h3> 
                        <input type = "text" id="firstName" name = "firstName" placeholder = "Enter your first name" class = "w-50 mx-auto  mx-auto form-control border border-primary">
                        <div class="d-flex justify-content-center mt-3 w-50 mx-auto ">
                            <input type = "email" id="emailId" name = "email" placeholder = "Enter your email-id" class = "me-1  form-control border border-primary">
                            <button type = "button" class = "btn btn-success" onclick = "validateMail()" name = "vaildateButton">verify</button>
                        </div>
                        <button type = "submit" disabled id="buttonDisable"  name = "enterData" class = "btn btn-primary my-auto mt-3 w-50">Submit</button>
                    </div>
                </form>

                <div class = "w-25 mx-auto mt-5 rounded-pill p-4">
                    <div id="inner" class="text-center fw-bold text-danger"></div>
                </div> 

                <cfif structKeyExists(form,"enterData")>
                    <cfset local.obj  =  new question24()>
                    <cfset local.result  =  local.obj.detailsEntry(form.firstName,form.email)>
                </cfif>

            </cfoutput>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <script src="./script.js"></script>
        </body>
    </html>
