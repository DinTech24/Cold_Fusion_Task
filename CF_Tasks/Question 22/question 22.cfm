<cfoutput>
<!DOCTYPE HTML>
    <html>
        <head>
            <meta charset = "UTF-8">
            <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
            <title>Document</title>
            <link href="../Bootstrap/bootstrap.min.css" rel="stylesheet" >
        </head>
        <body>
            <cfset jsonData = [{"Name":"saravanan","Age":27,"LOCATION":"dubai"},
                               {"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]>
            <table class="border border-success mx-auto mt-5 w-50 text-center fw-bold">
                <thead class="border border-success">
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Location</th>
                    </tr>
                </thead>
                <tbody>
                    <cfloop index="i" from="#1#" to="#jsonData.len()#">
                        <tr>
                            <td>#jsonData[i].name#</td>
                            <td>#jsonData[i].Age#</td>
                            <td>#jsonData[i].LOCATION#</td>
                        </tr>
                    </cfloop>
                </tbody>
            </table>
        </body>
    </html>
</cfoutput>
