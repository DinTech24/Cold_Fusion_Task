<cfoutput>
    <!doctype HTML>
    <html lang = 'en'>
        <head>
            <meta charset = "UTF-8">
            <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
            <title>Document</title>
            <link href = "https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel = "stylesheet" integrity = "sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin = "anonymous"></head>
        </head>

        <body>
            <form action = "" method = "POST">
                <div class = "mt-3 text-center">
                    <input name = "inputVal" id = "inp" type = "text" class = "w-75 mx-auto form-control border border-primary" placeholder = "Enter number">
                    <button type = "submit" class = "btn btn-primary  mt-3 w-25" onclick = "check()">Submit</button>
                </div>
            </form>
            <cfif structKeyExists(form,"inputVal") AND len(form.inputVal) GT 0>
                <cfset obje  =  new question17()>
                <cfset result  =  obje.numUpto(form.inputVal)>
            </cfif>
            <div class = "w-25 mx-auto border border-dark text-light mt-5 rounded p-4">
                <cfloop collection = "#result#" item = "i">
                    <div class = "text-center fw-bold" style = "color:#result[i]#;">#i#</div><br>
                </cfloop>
            </div>
            <script src = "https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity = "sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin = "anonymous"></script>
            <script>
                function check(){
                    var text  =  document.getElementById("inp").value;
                    var pattern  =  /[0-9]/;
                    var result  =  pattern.test(text)
                    if(result  =  false){
                        document.getElementById("inp").innerHTML  =  "Enter a number"
                    }
                    else{
                            
                    }
                }
            </script> 
        </body>
    <html>
</cfoutput>