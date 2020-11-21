<%--
  Created by IntelliJ IDEA.
  User: johannafransson
  Date: 2020-10-29
  Time: 05:00
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: johannafransson
  Date: 2020-10-25
  Time: 06:34

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.JSONValue"%>
<%@ page import="org.json.simple.JSONArray"%>


<html>
<head>
    <%--import libraries used--%>

    <title>GroceryMart Application</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <!-- Note: when deploying, replace "development.js" with "production.min.js". -->
    <script src="https://unpkg.com/react@17/umd/react.development.js"  crossorigin></script>
    <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js"  crossorigin></script>

        <link href="style.css" rel="stylesheet">

</head>
<body>


<!--Navigation !-->
<nav class="navbar navbar-expand-md navbar-light bg-">
    <div>
        <a class="navbar-brand" href="index.jsp"><img src="logo.png" padding="0" , border="0"></a>
        <div id="navbar-container"></div>



    </div>
</nav>


<!--Image Slider !-->
<div id="slides" class="carousel slide" data-ride="carousel">
    <ul class="carousel-indicators">
        <li data-target="#slides" data-slide-to="0" class="active"></li>
        <li data-target="#slides" data-slide-to="1"></li>
        <li data-target="#slides" data-slide-to="2"></li>
    </ul>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="slider3.jpg" height="600">
            <div class="carousel-caption">
                <h1 class="display-2">GroceryMart</h1>
                <h3>Easy Shopping Online</h3>
                <a href = signup_pages/market_signup.jsp><button type="button" class="btn btn-outline-light btn-lg">SIGN UP AS MARKET</button></a>
                <a href = "signup_pages/customer_signup.jsp"><button type="button" class="btn btn-primary btn-lg">SIGN UP AS CUSTOMER</button></a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="slider2.jpg" alt="" width="1500" height="500">
        </div>
        <div class="carousel-item">
            <img src="slider1.jpg" alt="" height="500">

        </div>
    </div>
</div>


<!--- Jumbotron -->
<div class="container-fluid">
    <div class="row jumbotron">
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 col-xl-10">
            <p class="lead">Grocery shopping online is simple and easy. Try GroceryMart today!</p>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 col-xl-2">
            <a href="#">
                <button type="button" class="btn btn-outline-secondary btn-lg">Start Shopping!</button>
            </a>
        </div>
    </div>
</div>


<!--- Welcome Section -->
<div class="container-fluid padding">
    <div class="row welcome text-center">
        <div class="col-12">
            <h1 class="display-4">Made for you.</h1>
        </div>
        <hr>
        <div class="col-12">
            <p class="lead">Welcome to GroceryMart. Our core mission values are to provide a safe environment for people
                to be able to shop their grocieries online. </p>
        </div>
    </div>
</div>


<!--- Three Column Section -->
<div class="container-fluid padding">
    <div class="row text-center padding">
        <div class="col-xs-12 col-sm-6 col-md-4">
            <i class="fa fa-shopping-cart"></i>
            <h3>EASY SHOPPING</h3>
            <p>Choose between a variety of fruits and vegtables</p>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4">
            <i class="fa fa-recycle"></i>
            <h3>SUSTAINABLE</h3>
            <p>We try our best to limit waste, we only source sustainably</p>
        </div>
        <div class="col-sm-12 col-sm-6 col-md-4">
            <i class="fa fa-heart"></i>
            <h3>HEALTHY</h3>
            <p>Food that is healthy and tastes good!</p>
        </div>
    </div>
    <hr class="my-4">
</div>

<!--- Two Column Section -->
<div class="container-fluid padding">
    <div class="row padding">
        <div class="col-lg-6">
            <h2>Only the best quality products...</h2>
            <p>We only resoruce the best quality fresh produce. Choose between multiple varieties in the fruit and
                vegtable section.</p>
            <p>Our meat is only brought up in humane conditions and sourced locally. Try our delicates today.</p>
            <p>We have chosen select beverages that are both healthy and tastes good. Browse to our beverage section to
                read more!</p>
            <br>
            <a href="" class="btn btn-primary">Learn More</a>
        </div>
        <div class="col-lg-4">
            <img src="sidePic.png" class="img-fluid">
        </div>
    </div>
</div>


<!--- Connect -->
<div class="container-fluid padding">
    <div class="row text-center padding">
        <div class="col-12">
            <h2>Connect</h2>
        </div>
        <div class="col-12 social padding">
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-google-plus-g"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
        </div>
    </div>
</div>

<!--- Footer -->
<footer>
    <div class="container-fluid padding">
        <div class="row text-center">
            <div class="col-md-4">
                <hr class="light">
                <h5>Contact Info</h5>
                <hr class="light">
                <%
                    String db = request.getParameter("grocerymart");
                    String user = "root";
                    try{
                        java.sql.Connection con; 
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a", user, "cs157a"); 
                        Statement stmt=con.createStatement();
                        ResultSet rs=stmt.executeQuery("select store_name, store_email, store_phone from grocerymart.markets where store_name = 'GroceryMart'");
                        while(rs.next())
                            out.println(rs.getString(1) + "<br>" + rs.getString(2) + "<br>" + rs.getString(3));
                        con.close();
                    }
                    catch(SQLException e){
                        out.println("SQLException caught: " +e.getMessage());
                    }
                %>

              <!--  <p>650-669-5578</p>
                <p>johanna.fransson@sjsu.edu</p>
                <p>1368 Marvin's Drive</p>
                <p>San José, CA, 95056</p>-->
            </div>
            <div class="col-md-4">
                <hr class="light">
                <h5>Our shipping hours</h5>
                <hr class="light">
                <%
                    try{
                        java.sql.Connection con; 
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a", user, "root");
                        Statement stmt=con.createStatement();
                        ResultSet rs=stmt.executeQuery("select store_hours from grocerymart.markets where store_name = 'GroceryMart'");
                        String p = null;
                        while(rs.next())
                            p = rs.getString(1);
                        JSONObject obj = (JSONObject) JSONValue.parse(p);
                        Set keys = obj.keySet();
                        List<Object> keyList =  Arrays.asList(keys.toArray());
                        JSONArray monHours = (JSONArray) obj.get("Monday");
                        out.println(keyList.get(keyList.indexOf("Monday")) + " : " + (String) monHours.get(0) + " - " + (String) monHours.get(1) + "<br>");
                        JSONArray tuesHours = (JSONArray) obj.get("Tuesday");
                        out.println(keyList.get(keyList.indexOf("Tuesday")) + " : " + (String) tuesHours.get(0) + " - " + (String) tuesHours.get(1) + "<br>");
                        JSONArray wedHours = (JSONArray) obj.get("Wednesday");
                        out.println(keyList.get(keyList.indexOf("Wednesday")) + " : " + (String) wedHours.get(0) + " - " + (String) wedHours.get(1) + "<br>");
                        JSONArray thursHours = (JSONArray) obj.get("Thursday");
                        out.println(keyList.get(keyList.indexOf("Thursday")) + " : " + (String) thursHours.get(0) + " - " + (String) thursHours.get(1) + "<br>");
                        JSONArray friHours = (JSONArray) obj.get("Friday");
                        out.println(keyList.get(keyList.indexOf("Friday")) + " : " + (String) friHours.get(0) + " - " + (String) friHours.get(1) + "<br>");
                        JSONArray satHours = (JSONArray) obj.get("Saturday");
                        out.println(keyList.get(keyList.indexOf("Saturday")) + " : " + (String) satHours.get(0) + " - " + (String) satHours.get(1) + "<br>");
                        JSONArray sunHours = (JSONArray) obj.get("Sunday");
                        out.println(keyList.get(keyList.indexOf("Sunday")) + " : " + (String) sunHours.get(0) + " - " + (String) sunHours.get(1));

                    }
                    catch(Exception e){
                        out.println("Exception caught: " +e.getMessage());
                    }
                %>
                <!--
                <p>Monday: 9am to 5pm</p>
                <p>Saturday: 10am to 4pm</p>
                <p>Sunday: Closed</p>-->
            </div>
            <div class="col-md-4">
                <hr class="light">
                <h5>Service Area</h5>
                <hr class="light">
                <p>Mountain View, CA, 94040</p>
                <p>Los Altos, CA, 94020</p>
                <p>Cupertino, CA, 94015</p>
                <p>San José, CA, 95088</p>
            </div>
            <div class="col-12">
                <hr class="light-100">
                <h5>&copy; grocerymart.com</h5>
            </div>
        </div>
    </div>
</footer>

<!--<script type="text/jsx">
    console.log("hallå?")
    // This is the code that starts the react-stuff
    //import {StartReact} from "./javascript/StartReact.js";
    import {Navbar} from "./components/Navbar.jsx";
    import React from "react";
    import * as ReactDOM from "react-dom";

    let navbarContainer = document.querySelector("#navbar-container");
    console.log(navbarContainer)
    console.log(React.Component)
    ReactDOM.render(<Navbar/>, navbarContainer);

</script>-->
<script src="/dist/main.js"></script>

</body>
</html>

