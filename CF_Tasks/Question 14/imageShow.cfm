<cfapplication name = "applicationName" sessionmanagement = "Yes">
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet" >
    </head>
    <body>
        <cfoutput>
            <div class="text-center  fw-bold fs-5 mt-5">
                <div class="d-flex justify-content-center">
                    <div class="border border-dark  p-2 mx-auto">
                        <cfimage action="writeToBrowser" source="#session.uploadedImage#" width="100" height="100">
                    </div>  
                </div>
                <div>IMAGE NAME : #session.imgname#</div>
                <div>DESCRIPTION : #session.description#</div>
            </div>
        </cfoutput>
    </body>
<html>