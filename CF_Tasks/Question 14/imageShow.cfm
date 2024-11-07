    <cfapplication name = "applicationName" sessionmanagement = "Yes">
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"></head>
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