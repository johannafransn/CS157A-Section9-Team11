<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link href="style.css" rel="stylesheet">
    </head>

    <a class="navbar-brand" href="../index.jsp"><img src="logosingup.png" padding="0" , border="0"></a>
    <form action = "authenticate_market.jsp" method = "post">
        <input type = "email" name = "email" placeholder= "Email" required><br><br>
        <input type = "password" name = "password" placeholder= "Password" required>
        <button type = "submit" onclick = "redirect()">Submit</button>
    </form>

    <script>
        var redirect = function(){
            document.location.href="../index.jsp"
        }
    </script>
</html>