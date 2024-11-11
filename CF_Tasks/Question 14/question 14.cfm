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
                <form action = "" method = "POST" enctype = "multipart/form-data">
                    <div class = "text-center mt-3 w-100">
                        <input id = "inp1" type = "text" name = "imgName" placeholder = "Image Name" class = "w-50 mx-auto  mx-auto form-control border border-success">
                        <textarea name="description" class = "mt-3 w-50 border border-success form-control mx-auto" placeholder = "Enter Description"></textarea>
                        <input type = "file" name = "imageFile" id = "fileData" class = "mt-3 w-50 mx-auto  mx-auto form-control border border-success">
                        <button value = "submit" name ="validateButton" type = "submit" onclick = "validate()"  class = "w-25 btn btn-success my-auto mt-3">Submit</button>
                        <div id = "inner"><div>
                    </div>
                </form>

                <cfif structKeyExists(form,"validateButton")>
                    <cfset local.imagepath = imageRead(form.imageFile)>
                    <cfset session.uploadedImage = local.imagepath>
                    <cfset session.imgName = form.imgName>
                    <cfset session.description = form.description>
                    <cfdump  var="#form.description#">
                    <a href="imageShow.cfm">
                        <cfimage action="writeToBrowser" source="#form.imageFile#" width="20" height="20">
                    </a>
                </cfif> 
                <script>
                    function validate(){
                        var file = document.getElementById("fileData");
                        var imagename = document.getElementById("inp1").value;
                        if(imagename.length == 0){
                            alert("Image name is required");
                        }
                        if(file.files.length > 0){
                            for (const i = 0; i <=  file.files.length - 1; i++) {
                            const fsize  =  file.files.item(i).size;
                            const filesize  =  Math.round((fsize / 1024));
                                if (filesize >= 1024) {
                                    alert("File too Big, please select a file less than 1mb");
                                } else {
                                    document.getElementById('inner').innerHTML  =  
                                    "File size is : <b>"+ filesize + '</b> KB';
                                }
                            }
                        }
                        else{
                            alert("Upload an Image");
                            event.preventDefault()
                            
                        }
                    }
                </script>
            </cfoutput>
        </body>
    </html>

