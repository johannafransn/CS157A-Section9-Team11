<!DOCTYPE html>



<html>
    <h2>
        Sign Up Page
    </h2>
    <div class = "signUp">
    <form action="insert_market_signup.jsp">
        <input type = "text" name = "storeName" placeholder = "Store Name" required><br><br>
        <input type = "text" name = "description" placeholder = "Store Description" required><br><br>
        <input type = "email" name = "email" placeholder = "Email" required><br><br>
        <input type = "text" name = "phone" placeholder="Phone Number"><br><br>
        <input type = "text" name = "street" placeholder = "Street Address" required><br><br>
        <input type = "text" name = "city" placeholder = "City" required><br><br>
        <input type = "text" name = "state" placeholder = "State" required><br><br>
        <input type = "text" name = "zipcode" placeholder = "Zipcode" required><br><br>
        <input type = "password" name = "password" placeholder="Password" required><br><br>
        <input type = "password" name = "confirmPass" placeholder="Confirm Password" required><br><br>
        <label for = "monTimes">Monday Hours</label><br>
        <input type = "text" name = "monOpen" placeholder = "Opening Time" required>
        <input type = "text" name = "monClose" placeholder="Closing Time" required><br><br>
        <label for = "tuesTimes">Tuesday Hours</label><br>
        <input type = "text" name = "tuesOpen" placeholder = "Opening Time" required>
        <input type = "text" name = "tuesClose" placeholder="Closing Time" required><br><br>
        <label for = "wedTimes">Wednesday Hours</label><br>
        <input type = "text" name = "wedOpen" placeholder = "Opening Time" required>
        <input type = "text" name = "wedClose" placeholder="Closing Time" required><br><br>
        <label for = "thursTimes">Thursday Hours</label><br>
        <input type = "text" name = "thursOpen" placeholder = "Opening Time" required>
        <input type = "text" name = "thursClose" placeholder="Closing Time" required><br><br>
        <label for = "friTimes">Friday Hours</label><br>
        <input type = "text" name = "friOpen" placeholder = "Opening Time" required>
        <input type = "text" name = "friClose" placeholder="Closing Time" required><br><br>
        <label for = "satTimes">Saturday Hours</label><br>
        <input type = "text" name = "satOpen" placeholder = "Opening Time" required>
        <input type = "text" name = "satClose" placeholder="Closing Time" required><br><br>
        <label for = "sunTimes">Sunday Hours</label><br>
        <input type = "text" name = "sunOpen" placeholder = "Opening Time" required>
        <input type = "text" name = "sunClose" placeholder="Closing Time" required><br><br>
        <button type = "submit" >Submit</button>
    </form>
    </div>