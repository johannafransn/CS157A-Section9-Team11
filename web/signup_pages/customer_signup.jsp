<!DOCTYPE html>

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link href="styleSignup.css" rel="stylesheet">


</head>
<html>

<!--  <h2>
        Sign Up Page
    </h2>
    <div class = "signUp">
    <form action="insert_customer_signup.jsp">
        <input type = "text" name = "fname" placeholder = "First Name" required>
        <input type = "text" name = "lname" placeholder = "Last Name" required><br><br>
        <input type = "email" name = "email" placeholder = "Email" required><br><br>
        <input type = "text" name = "phone" placeholder="Phone Number"><br><br>
        <input type = "text" name = "street" placeholder = "Street Address" required><br><br>
        <input type = "text" name = "city" placeholder = "City" required><br><br>
        <input type = "text" name = "state" placeholder = "State" required><br><br>
        <input type = "text" name = "zipcode" placeholder = "Zipcode" required><br><br>
        <input type = "password" name = "password" placeholder="Password" required><br><br>
        <input type = "password" name = "confirmPass" placeholder="Confirm Password" required><br><br>
        <button type = "submit" onclick = "redirect()">Submit</button>
    </form>
    </div>-->
<a class="navbar-brand" href="index.jsp"><img src="logosingup.png" padding="0" , border="0"></a>

    <form action="insert_customer_signup.jsp">
        <div class="form-group">
            <input type = "email" name = "email" placeholder = "Email" required><br><br>
            <input type = "text" name = "fname" placeholder = "First Name" required>
            <input type = "text" name = "lname" placeholder = "Last Name" required><br><br>
            <input type = "text" name = "phone" placeholder="Phone Number"><br><br>
            <input type = "text" name = "street" placeholder = "Street Address" required><br><br>
            <input type = "text" name = "city" placeholder = "City" required><br><br>
            <input type = "text" name = "state" placeholder = "State" required><br><br>
            <input type = "text" name = "zipcode" placeholder = "Zipcode" required><br><br>
            <input type = "password" name = "password" placeholder="Password" required><br><br>
            <input type = "password" name = "confirmPass" placeholder="Confirm Password" required><br><br>
        </div>


        <button type = "submit" class="btn btn-primary" onclick = "redirect()">Submit</button>
    </form>



    <script>
        var redirect = function(){
            document.location.href="main_page.jsp"
        }
    </script>

</html>