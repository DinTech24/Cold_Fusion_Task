function validateForm(){
    var fullname=document.getElementById("name").value;
    var email=document.getElementById("email").value;
    var relocateYes=document.getElementById("relocateYes").checked;
    var relocateNo=document.getElementById("relocateNo").checked;
    var phonenumber=document.getElementById("phone").value;
    var job=document.getElementById("joinDate").value;
    var email=document.getElementById("email").value;
    var flag = true;


   if(fullname==""){
       document.getElementById("namewarning").innerHTML ="Should enter name"
   }
      for(i=0;i<fullname.length;i++){
       var type=fullname.charAt(i);
       if((/[0-9]/).test(type)==true){
           document.getElementById("namewarning").innerHTML ="Should only contain characters"
           var flag = false;
       }    
   }
      
   var phonestring = phonenumber.toString();
   if(phonestring==""){
       document.getElementById("phonewarning").innerHTML ="Should enter Phone Number"
       var flag = false;
   }
   else{
       if(isNaN(phonenumber)==true){
           document.getElementById("phonewarning").innerHTML ="Should only contain digits"
           var flag = false;
       }
       else if(phonestring.length!=10){
           document.getElementById("phonewarning").innerHTML ="Should have 10 digits"
           var flag = false;
       }  
   }

   if(email==""){
       document.getElementById("emailwarning").innerHTML ="Should enter Email-id"
   }
   else if(isValid == false){
       const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
       const isValid = emailPattern.test(email);
        document.getElementById("emailwarning").innerHTML ="Should follow email pattern"		
   }
   else{
        document.getElementById("emailwarning").innerHTML ="";	
   }


   if(job==""){
       document.getElementById("startDateInner").innerHTML ="Should enter Date of Joining"
       var flag = false;
   }
       

   if(relocateYes=="" && relocateNo==""){
       document.getElementById("relocateWarning").innerHTML ="Should Select one option"
       var flag = false;
   }

   if(flag == false){
        event.preventDefault();
        return false
   }
   else{
        return true   
    }



}