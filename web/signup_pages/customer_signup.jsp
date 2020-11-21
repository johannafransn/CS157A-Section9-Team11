<!DOCTYPE html>



<html>
    <h2>
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
    </div>

    <script>
        var redirect = function(){
            document.location.href="main_page.jsp"
        }
    </script>

</html>