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
        <div class="row mt-3">
            <div class="col-3"></div>
            <div class="col-6 ">
                <div class="header">
                    <img src="Assets/wofoo.PNG" class="mt-3 ms-2" alt="">
                </div>
                <div class="px-4 bg-white">
                    <div class="mb-3 formHead">
                        <div class="mainHead">Employment Application</div>
                        <span class="infinityBox">Infinity Box Inc.</span>
                    </div>
                    <div class="mt-3">
                        <form method="POST" action="" enctype="multipart/form-data">
                            <div id="addClassPosition" class="my-2">
                                <div class="mb-2">
                                    <label>Which position are you applying for?</label><span class="text-danger"> *</span>
                                </div>
                                <select class="mb-2" name="selectPosition" id="positionSelect">
                                    <option value="" selected></option>
                                    <option value="Interface Designer">Interface Designer</option>
                                    <option value="System Engineer">System Engineer</option>
                                    <option value="System Administrator">System Administrator</option>
                                    <option value="Office manager">Office manager</option>
                                </select>
                                <div class="warning" id="positionWarning"></div>
                            </div>
                            <div class="my-2" id="addClassRelocate">
                                <div class="mb-2">
                                    <label >Are you willing to relocate</label><span class="text-danger"> *</span>
                                </div>
                                <div class="mb-2">
                                    <div>
                                        <input id="relocateYes" type="radio" name="relocateData" value="yes"> <label>Yes</label>
                                    </div>
                                    <div>
                                        <input id="relocateNo" type="radio" name="relocateData" value="no"> <label>No</label>
                                    </div>
                                </div>
                                <div class="warning" id="relocateWarning"></div>
                            </div>
                            <div class="my-2">
                                <div class="mb-2">
                                    <label>When you can start?</label><span class="text-danger"> *</span>
                                </div>
                                <input class="mb-2" name="joinDate" id="joinDate" type="date">
                                <div class="warning" id="startDateInner"></div>
                            </div>
                            <div class="my-2">
                                <div class="mb-2">
                                    <label>Portfolio Web Site</label>
                                </div>
                                <div class="mb-2">
                                    <input id="portfolioLink" name="portfolio" class="w-75" type="text">
                                </div>
                            </div>
                            <div class="my-2">
                                <div class="mb-2">
                                    <label>Attach a copy of Your Resume</label>
                                </div>
                                <div class="mb-2">
                                    <input id="resumenFileId" name="resumeFile" type="file">
                                </div>
                                <div>Word or PDF Document only</div>
                            </div>
                            <div class="my-2">
                                <div class="mb-2">
                                    <label >Salary requirements</label>
                                </div>
                                <div class="mb-2 d-flex">
                                    <span class="me-2">$</span><input  name="salary" class="dollarClass" type="text"> &bullet; <input class="centClass" name="salaryCent" type="text">
                                </div>
                                <div class="d-flex justify-content-between w-25 ms-3"><span>Dollar</span><span>Cent </span></div>
                            </div>
                            <div>Your Contact Information</div>
                            <div class="my-2" id="addClassName">
                                <div class="mb-2">
                                    <label >Name</label><span class="text-danger"> *</span>
                                </div>
                                <div class="d-flex mb-2">
                                    <input  name="firstName" id="name" class="firstName me-2" type="text"><input  name="lastName" required class="lastName me-2" type="text">
                                </div>
                                <div class="d-flex justify-content-between w-25"><span>First</span><span>Last </span></div>
                                <div class="warning" id="namewarning"></div>
                            </div>
                            <div class="my-2">
                                <div class="mb-2">
                                    <label >Email Address</label><span class="text-danger"> *</span>
                                </div>
                                <input class="w-75 mb-2" id="email" name="emailAddress" type="email">
                                <div class="warning" id="emailwarning"></div>
                            </div>
                            <div class="my-2">
                                <div class="mb-2">
                                    <label>Phone</label><span class="text-danger"> *</span>
                                </div>
                                <div>
                                    <input class="phonenumber mb-2" required name="phoneNumberfirst" type="text"> -
                                    <input class="phonenumber mb-2" required  name="phoneNumbersecond" type="text"> -
                                    <input class="phoneLast mb-2" id="phone" name="phoneNumberthird" type="text">
                                </div>
                                <div class="d-flex justify-content-between w-25"><span>###</span><span>### </span><span>####</span></div>
                                <div class="warning" id="phonewarning"></div>
                            </div>
                            <div class="mb-2">
                                <button class="mt-3 border border-secondary rounded" name="validateButton" onclick="return validateForm()" type="submit">Submit</button>
                            </div>

                            <div class="mx-1">
                                <div>This site is protected by reCAPTCHA Enterprise and the Google <a href="">Privacy Policy</a> and <a href="">Terms of Service</a> apply.</div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-3"></div>
        </div>
        <div class="text-center mb-5">
            <div>Powered by </div>
            <div><img src="Assets/wufoo-logo-500x210.png" width="80" alt=""></div>
            <div>See how easy is it to create a <a href="">form</a> </div>
        </div>
        <cfif structKeyExists(form, "validateButton")>
            <cfset local.username = "#form.firstName#" & "#form.lastName#">
            <cfset local.phoneNumber = "form.phoneNumberfirst" & "form.phoneNumbersecond" & "form.phoneNumberthird">
            <cfset local.object = new Component.question23()>
            <cfset local.result = local.object.insertToDatabase(
                form.selectPosition,form.relocateData,form.joinDate,form.portfolio,
                form.resumeFile,form.salary,form.salaryCent,local.userName
                ,form.emailAddress, local.phoneNumber
            )>
        </cfif>
        <script src="script.js"></script>
    </body>
</html>