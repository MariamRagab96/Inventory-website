<%-- 
    Document   : InsertInventory
    Created on : Jul 26, 2021, 9:42:53 PM
    Author     : Developer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>Add User</title>
        <style>
            body {
                color: #404E67;
                background: #F5F7FA;
                font-family: 'Open Sans', sans-serif;
            }
            form{
                margin: auto;
            }
            .invalid{
                color: red;
                font-size: medium;
                align-content: center
            }
        </style>
    </head>
    <body>
        <!--onsubmit="return validateSoldBought()"-->
        <form class="col-md-6" style="margin: auto;" onsubmit="return mysubmit()" action="insertInventory"  method="post"  >
            <div class="col-md-6">
                <label for="inputItem" class="form-label">Inventory Item</label>
                <input type="text" class="form-control" id="item" name="item" required>
            </div>

            <div class="col-md-6">
                <label for="sold" class="form-label">Sold</label>
                <input type="number" class="form-control" id="sold" name="sold" required onblur="return validateSoldBought()">
            </div>
            <div class="col-md-6">
                <label for="bought" class="form-label">Bought</label>
                <input type="number" class="form-control" id="bought" name="bought" required onblur="return validateSoldBought()">
            </div>
            <div class="col-12">
                <br>
                <div class ="invalid" id ="invalid"></div>
                <br>
                <button type="submit" class="btn btn-primary" >Insert</button>
            </div>
        </form>
        <script src=validation.js></script>
    </body>


</html>