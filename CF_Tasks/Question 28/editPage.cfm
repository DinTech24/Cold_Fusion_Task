<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="./Style/style.css">
</head>
<body>
    <cfif session.role EQ "User">
        <cflocation  url="./index.cfm">
    </cfif>
    <form method = "POST" class="d-flex justify-content-center">
        <div class="text-center ms-3 mt-4 w-50">
            <div class="text-center p-3 border border-success rounded me-3 adminLogin addbackGround">
                <h4>Edit Page </h4>
                <input name="pagename" required placeholder="Enter page name" type="text" class="form-control border border-success mt-3">
                <textarea id="pageDesc" required name="pageDesc" placeholder="Enter Description" class="form-control border border-success mt-3"></textarea>
                <button  class="btn btn-success w-25 mt-3"  type="submit" name="editPage">Edit</button>
            </div>
        </div>
        <div class="warning" id="warning"></div> 
    </form>
    <cfif structKeyExists(form, "editPage")>
        <cfset local.object = new Component.question28()>
        <cfset local.result = local.object.editPage(session.editPageId,form.pagename,form.pageDesc)>
        <cfif local.result EQ 1>
            <div class="warning text-center" id="warning">Page Name already exists</div>
            <cfelse>
                <cflocation  url="./adminPage.cfm">
        </cfif>
    </cfif> 
</body>
</html>