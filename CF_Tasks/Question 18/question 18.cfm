<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet" >
</head>
<body>
    <div class="text-center">
        <form method="POST">
            <button class="btn btn-success w-50 mt-5" type="submit" name="submitButtton">Submit</button>
        </form>
        <div>

        </div>
    </div>
    <cfif structKeyExists(form, "submitButtton")>
        <cfset myQuery = queryNew("id,name,email","Integer,Varchar,Varchar")>
        <cfset queryAddRow(myQuery,[ 
                            {id=1,name="Abhijith ",email="abhijith@123.com"}, 
                            {id=2,name="Jibin",email="jibin@123.com"}, 
                            {id=3,name="Appus",email="appus@123.com"} 
                        ])>
    </cfif>
    <div class="text-center mx-auto">
        <cfdump var="#myQuery#">
    </div>
</body>
</html>