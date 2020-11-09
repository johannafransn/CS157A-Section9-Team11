<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*" %> 
<%@ page import = "java.util.*" %> 

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
                ResultSet rs=stmt.executeQuery("SELECT p.product_name, p.product_description, p.price FROM grocerymart.products p JOIN grocerymart.categories c WHERE c.product_id = p.product_id AND c.product_type = 'Beverage';");
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
   