<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

<html>
<head>
    <%--import libraries used--%>

    <title>GroceryMart Application</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <!-- Note: when deploying, replace "development.js" with "production.min.js". -->
    <script src="https://unpkg.com/react@17/umd/react.development.js"  crossorigin></script>
    <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js"  crossorigin></script>

        <link href="style.css" rel="stylesheet">

</head>
<body>
<!--Navbar from react component should also be here !-->

<a class="navbar-brand" href="index.jsp"><img src="logo.png" padding="0" , border="0"></a>


<!--Start of welcome to produce !-->
    <div class="container-fluid padding">
        <div class="row welcome text-center">
            <div class="col-12">
                <h1 class="display-4">Fresh Produce.</h1>
            </div>
            <hr>
            <div class="col-12">
                <p class="lead">We have tons of great options for fresh produce. Check them out here! </p>
            </div>
        </div>
    </div>
<!--End of welcome to produce !-->


<!--Start of Product Grid !-->
            <div class="row">
                <!-- Product  -->
                <div class="col-md-4 product-grid">
                    <div class="image">
                        <a href="#">
                            <img src="images/apple.jpg" class="w-100">
                            <div class="overlay">
                                <div class="detail">View Details</div>
                            </div>
                        </a>
                    </div>
                    <h5 class="text-center">Apple</h5>
                    <h5 class="text-center">Price: $5</h5>
                    <a href="#" class="btn buy">BUY</a>
                </div>
                <!-- ./Product -->

                <!-- Product  -->
                <div class="col-md-4 product-grid">
                    <div class="image">
                        <a href="#">
                            <img src="images/broccoli.jpg" class="w-100">
                            <div class="overlay">
                                <div class="detail">View Details</div>
                            </div>
                        </a>
                    </div>
                    <h5 class="text-center">Broccoli</h5>
                    <h5 class="text-center">Price: $1</h5>
                    <a href="#" class="btn buy">BUY</a>
                </div>
                <!-- ./Product -->

                <!-- Product  -->
                <div class="col-md-4 product-grid">
                    <div class="image">
                        <a href="#">
                            <img src="images/orange.jpg" class="w-100">
                            <div class="overlay">
                                <div class="detail">View Details</div>
                            </div>
                        </a>
                    </div>
                    <h5 class="text-center">Orange</h5>
                    <h5 class="text-center">Price: $1</h5>
                    <a href="#" class="btn buy">BUY</a>
                </div>
                <!-- ./Product -->

                <!-- Product  -->
                <div class="col-md-4 product-grid">
                    <div class="image">
                        <a href="#">
                            <img src="images/grapes.jpg" class="w-100">
                            <div class="overlay">
                                <div class="detail">View Details</div>
                            </div>
                        </a>
                    </div>
                    <h5 class="text-center">Grapes</h5>
                    <h5 class="text-center">Price: $4</h5>
                    <a href="#" class="btn buy">BUY</a>
                </div>
                <!-- ./Product -->

                <!-- Product  -->
                <div class="col-md-4 product-grid">
                    <div class="image">
                        <a href="#">
                            <img src="images/avocado.jpg" class="w-100">
                            <div class="overlay">
                                <div class="detail">View Details</div>
                            </div>
                        </a>
                    </div>
                    <h5 class="text-center">Avocado</h5>
                    <h5 class="text-center">Price: $2</h5>
                    <a href="#" class="btn buy">BUY</a>
                </div>
                <!-- ./Product -->

                <!-- Product  -->
                <div class="col-md-4 product-grid">
                    <div class="image">
                        <a href="#">
                            <img src="images/banana.jpg" class="w-100">
                            <div class="overlay">
                                <div class="detail">View Details</div>
                            </div>
                        </a>
                    </div>
                    <h5 class="text-center">Banana</h5>
                    <h5 class="text-center">Price: $3</h5>
                    <a href="#" class="btn buy">BUY</a>
                </div>
                <!-- ./Product -->
            </div>
<!--End of Product Grid !-->
        </div>
        </body>
        </div>



    <div class="container-fluid padding">
        <div class="text-center">
            <%
            String db = request.getParameter("grocerymart");
            String user = "root";
            out.println("Product " + " Description" + " Price" + "<br>");
            try{
                java.sql.Connection con;
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a", user, "cs157a");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("SELECT p.product_name, p.product_description, p.price FROM grocerymart.products p JOIN grocerymart.categories c WHERE c.product_id = p.product_id AND c.product_type = 'Produce';");
                while(rs.next())
                    out.println(rs.getString(1) + "  " + rs.getString(2) + "  $" + rs.getInt(3) + "<br>");
                con.close();
            }
            catch(SQLException e){
                out.println("SQLException caught: " +e.getMessage());
            }
            %>
        </div>
    </div>

</body>
</html>
   