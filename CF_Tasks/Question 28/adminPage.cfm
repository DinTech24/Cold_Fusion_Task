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
            <cfoutput>
                <cfif NOT structKeyExists(session,"username")>
                    <cflocation  url="./index.cfm">
                </cfif>
                <form method="POST">
                    <div class=" d-flex justify-content-between mb-3 py-3 userHead">
                        <div class="helloUser ms-2">Welcome #session.username#</div>
                        <button class="btn btn-danger me-3" onclick="return logOut()" type="submit" name="userLogout">Logout</button>
                    </div>
                    <div class="d-flex me-3 justify-content-between">
                        <div class="ms-3 fs-2 mb-3">PAGES LIST</div>
                        <div><a href="./addPage.cfm" class="btn btn-primary">&plus; Add Page</a></div>
                    </div>
                    <div class="pageContainer">
                        <div id="accordion" class="accordion">
                            <cfif structKeyExists(session, 'username')>
                                <cfset local.obj = new Component.question28()>
                                <cfset local.result = local.obj.displayPages()>
                                <cfloop query="#local.result#">
                                    <h6 class="headSection">Page Id = #local.result.pageid#<i class="fa-solid fa-chevron-down fade1 fa-xs"></i></h6>
                                    <div class="pageData py-3">
                                        <div class="ms-2 mb-2">#local.result.pagename#</div>
                                        <p class="pagedesc ms-2">
                                            #local.result.pagedesc#
                                        </p>
                                        <div>
                                            <button value="<!--- #local.result.pageid# --->" type="submit" name="updatePage" class="btn btn-success">Update</button>
                                            <button value="#local.result.pageid#" type="submit" name="deletePage" class="btn btn-danger">Delete</button>
                                        </div>
                                    </div>
                                </cfloop>
                            </cfif>
                        </div>
                    </div>
                </form>
                </div>
                <cfif structKeyExists(form,"userLogout")>
                    <cflocation  url="./index.cfm">
                </cfif>
                <cfif structKeyExists(form, "updatePage")>
                    <cfset local.object = new Component.question28()>
                    <cflocation  url="./editPage.cfm">
                </cfif>
                <cfif structKeyExists(form, "deletePage")>
                    <cfset local.object = new Component.question28()>
                    <cfset local.result = local.object.deletePage(form.deletePage)>
                </cfif>
            </cfoutput>
            <script src="./script.js"></script>
          	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
            <script src="./accordion.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        </body>
</html>