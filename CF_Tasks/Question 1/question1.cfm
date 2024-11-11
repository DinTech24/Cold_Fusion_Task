<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet" >
</head>
<body>
    <cfoutput>
        <div class="d-flex flex-column mx-auto w-75 mt-4">
        <h4 class="fw-bold">Rating</h4>
        <form action="" method="POST">
            <div class="d-flex flex-column mt-3">
                <input name = "number" placeholder="Enter number" class = "form-control border border-primary">
                <input type = "submit" value = "Submit" class = "btn btn-primary my-auto mt-3">
            </div>
        </form>
        <cfif structKeyExists(form, "number")>
            <cfset local.num = form.number>
            <cfset local.value = new question1()>
            <cfset local.result = local.value.findString(local.num)>
            <div class = "w-25 mx-auto bg-dark text-light mt-5 rounded-pill p-4">
                <div class = "text-center">#local.result#</div>
            </div> 
        </cfif> 
        </div>
    </cfoutput>
</body>
</html>


