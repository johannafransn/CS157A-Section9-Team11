<!DOCTYPE html>
<html>
    <form action = "authenticate_market.jsp">
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