<!doctype HTML>
    <html lang='en'>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet" >
        </head>

        <body>
            <form action="" method="POST">
                <div class="mt-3 text-center">
                    <input required name="inputVal" placeholder="Enter the number" type="number" class="w-75 mx-auto form-control border border-primary">
                    <input type="submit" value="Submit" class="btn btn-primary  mt-3">
                </div>
            </form> 
            <cfif structKeyExists(form,"inputVal") AND len(form.inputVal) GT 0>
                <cfset local.obje = new Component.question12()>
                <cfset local.result = local.obje.retrieveData(form.inputVal)>
                <div class="w-25 mx-auto bg-dark text-center text-light mt-5 rounded p-4">
                    <table class="border border-light w-100 text-center">
                       <!---  <cfdump  var="#local.result#"> --->
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                        </tr>
                        <cfoutput query="local.result">
                            <tr>
                                <td>#FIRSTNAME#</td>
                                <td>#LASTNAME#</td>
                            </tr>
                        </cfoutput>
                    </table>
                    <cfoutput>
                        First Name of Person : #local.result.FIRSTNAME[form.inputVal]#
                    </cfoutput>
                </div> 
            </cfif>
        </body>
    <html>