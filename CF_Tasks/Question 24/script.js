function validateMail(){
    var firstname = document.getElementById("firstName").value;
    var email = document.getElementById("emailId").value;
    var button = document.getElementById("buttonDisable");
    if((firstname == "") || (email == "")){
        document.getElementById("inner").innerHTML="Enter all details"
    }
    else{
        $.ajax({
            type:"POST",
            url:"question24.cfc?method=verifyEmail",
            data: {email:email},
            success: function(disable){
                if(!disable){
                    button.disabled = false;
                }
            }
        });
    }
}