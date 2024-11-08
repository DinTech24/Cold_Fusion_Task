<cfoutput>
<!DOCTYPE HTML>
    <html>
        <head>
            <meta charset = "UTF-8">
            <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
            <title>Document</title>
            <link href = "https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel = "stylesheet" integrity = "sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin = "anonymous"></head>
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
