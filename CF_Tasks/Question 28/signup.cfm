<cfapplication name = "applicationName" sessionmanagement = "Yes">
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
            <div class="text-center mb-5">
                <h2 class="mx-auto text-primary">Content Management System</h2>
            </div>
            <div>
                <form method="POST" action="">
                    <div class="mx-auto w-50">
                        <div class="text-center ms-3">
                            <div class="text-center p-3 border border-success rounded me-3 adminLogin">
                                <h4>Account Creation</h4>
                                <input id="username" name="userName" placeholder="Enter your username" type="text" class="form-control border border-success mt-3">
                                <div class="warning" id="userwarn"></div>
                                <input id="password" name="password" placeholder="Enter a passsword" type="password" class="form-control border border-success mt-3">
                                <div class="warning" id="passwordwarn"></div>
                                <input id="passwordre" name="passwordre" placeholder="Re-enter the passsword" type="password" class="form-control border border-success mt-3">
                                <div class="warning" id="passwordrewarn"></div>
                                <select id="roleSelection" name="roleSelection" class="form-control border border-success mt-3" id="">
                                    <option selected value="Select your role" disabled>Select your role</option>
                                    <option value="Editor">Editor</option>
                                    <option value="Admin">Admin</option>
                                    <option value="User">User</option>
                                </select>
                                <div class="warning" id="rolewarn"></div>
                                <button  class="btn btn-success w-50 mt-3"  type="submit" onclick="validateSignUp()" name="validateSign">Sign Up</button>
                            </div>
                            <div class="me-5 ms-3"><a class="signupLink" href="./index.cfm">Already have an account? Login </a></div>
                        </div> 
                    </div>
                </form>
            </div>
            <cfif isDefined("form.validateSign")>
                <cfset local.obj = new Component.question28()>
                <cfset local.result = local.obj.signUp(form.userName,form.password,form.roleSelection)>
                <cfif local.result EQ 1>
                    <div class="text-center mt-4">
                        <div class="text-danger fw-bold">Username Already exists</div>
                    </div>
                </cfif>
            </cfif>
        </cfoutput>
        <script src="./script.js"></script>
    </body>
</html>