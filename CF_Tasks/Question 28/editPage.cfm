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
    <form method = "POST">
        <div class="text-center ms-3 mt-4">
            <div class="text-center p-3 border border-success rounded me-3 adminLogin addbackGround">
                <h4>Edit Page </h4>
                <input name="pageid" required placeholder="Enter page id" type="text" class="form-control border border-success mt-3">
                <input name="pagename" required placeholder="Enter page name" type="text" class="form-control border border-success mt-3">
                <textarea id="pageDesc" required name="pageDesc" placeholder="Enter Description" class="form-control border border-success mt-3"></textarea>
                <button  class="btn btn-success w-25 mt-3"  type="submit" name="editPage">Edit</button>
            </div>
        </div> 
    </form>
    <cfif structKeyExists(form, "editPage")>
        <cfset local.object = new Component.question28()>
        <cfset result = local.object.editPage(form.pageid,form.pagename,form.pageDesc)>
        <cflocation  url="./adminPage.cfm">
    </cfif> 
</body>
</html>