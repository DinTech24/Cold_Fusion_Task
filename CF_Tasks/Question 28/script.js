function validateSignUp(){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var passwordre = document.getElementById("passwordre").value;
    var roleSelection = document.getElementById("roleSelection").value;
    if(username === ""){
        document.getElementById("userwarn").innerHTML = "Enter a username";
        event.preventDefault();
    }
    else{
        document.getElementById("userwarn").innerHTML = "";
    }

    if(password === ""){
        document.getElementById("passwordwarn").innerHTML = "Enter a password";
        event.preventDefault();
    }
    else{
        document.getElementById("passwordwarn").innerHTML = "";
    }

    if(passwordre === ""){
        document.getElementById("passwordrewarn").innerHTML = "Re-enter the password";
        event.preventDefault();
    }
    else{
        document.getElementById("passwordrewarn").innerHTML = "";
    }

    if(password !== passwordre){
        document.getElementById("passwordrewarn").innerHTML = "Password missmatch";
        event.preventDefault();
    }
    else{
        document.getElementById("passwordrewarn").innerHTML = "";
    }

    if(roleSelection === "Select your role"){
        document.getElementById("rolewarn").innerHTML = "Select a role";
        event.preventDefault();
    }
    else{
        document.getElementById("rolewarn").innerHTML = "";
    }
}


function validateLogin(){
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var roleSelection = document.getElementById("roleSelection").value;

    if(username === ""){
        document.getElementById("userwarn").innerHTML = "Enter a username";
        event.preventDefault();
    }
    else{
        document.getElementById("userwarn").innerHTML = "";
    }

    if(password === ""){
        document.getElementById("passwordwarn").innerHTML = "Enter a password";
        event.preventDefault();
    }
    else{
        document.getElementById("passwordwarn").innerHTML = "";
    }

    if(roleSelection === "Select your role"){
        document.getElementById("rolewarn").innerHTML = "Select a role";
        event.preventDefault();
    }
    else{
        document.getElementById("rolewarn").innerHTML = "";
    }
}

