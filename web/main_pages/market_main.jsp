<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*" %> 

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Market Main Page</title>
    <link rel="stylesheet" href="style.css">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>     
<body>
    <nav class="navbar">
        <div class="navbar-center">
          <img src="logo.png" alt="store logo"/>
        </div>
      </nav>

    <header class="hero"> 
        <div class="banner">
          <h1 class="banner-title">Your Market Page</h1>
        </div>
      </header>

    <div class = "insert">
      <button class = "insert-btn" data-toggle = "modal" data-target = "#insertItemForm">insert new item</button>
      <button class = "coupon-btn" data-toggle = "modal" data-target = "#insertCouponForm">insert new coupon</button>
      <button class= "update-btn"  data-toggle = "modal"  data-target = "#updateItemForm">edit item</button>
    </div>
      
    <section class="products">
        <div class="section-title">
          <h2>Your products</h2>
        </div>
        <div class="products-center">
    
    
    <% 
        String user = "root";
        String image = "";
        try{
            java.sql.Connection con;
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a", user, "cs157a");
            Statement stmt=con.createStatement();
            String query = "SELECT * FROM grocerymart.products;";
            ResultSet rs=stmt.executeQuery(query);
            while(rs.next()){
              int product_id = rs.getInt("product_id");
              image = rs.getString("image_source");
            %>
                <article class="product">
                    <div class="img-container">
                        <img src="<%= image %>" alt="product" class="product-img"/>
                        <form action = "./market_utils/delete_item.jsp" method= "post">
                          <button class="delete-btn" type = "submit" name = "delete" value = "<%= product_id %>">delete item</button>
                        </form>
                      </div>
                    <h3><% out.println(rs.getString("product_name")); %></h3>
                    <h4>$<% out.println(rs.getInt("price")); %></h4>
                </article>
            <%
              }
              con.close();
        }
        catch(Exception e){
            out.println(e + " " + e.getMessage());
        }   
    %>
    </div>
    </section>

    <div class="modal fade" id="insertItemForm" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Add a New Item</h4>
          </div>
          <div class="modal-body">
            <form action = "./market_utils/insert_new_item.jsp" method = "post">
                <input type = "text" name = "prod_name" placeholder = "Product Name"><br><br>
                <input type = "text" name = "prod_price" placeholder= "Price"><br><br>
                <input type = "text" name = "prod_descrip" placeholder= "Product Description"><br><br>
                <button class = "btn btn-primary" type = "submit">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="insertCouponForm" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Add a New Coupon</h4>
          </div>
          <div class="modal-body">
            <form action = "./market_utils/insert_coupon.jsp" method = "post">
                <input type = "text" name = "type" placeholder = "Coupon Type"><br><br>
                <input type = "text" name = "amount" placeholder= "% Discount"><br><br>
                <input type = "text" name = "description" placeholder= "Coupon Description"><br><br>
                <input type = "text" name = "discounted" placeholder= "Cost Discounted"><br><br>
                <input type = "text" name = "limit" placeholder= "Usage Limit"><br><br>
                <button class = "btn btn-primary" type = "submit">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="updateItemForm" role="document" aria-hidden="false">
      <div class="modal-dialog">
        <div class="modal-content"> 
          <div class="modal-header">  
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Edit Item</h4>
          </div>
          <div class="modal-body">
              <form action= "./market_utils/update_item.jsp" method = "post">
                <input type = "text" name = "prodName" placeholder ="Name of item updating"><br><br>
                <input type = "text" name = "newProdName" placeholder ="New Item Name"><br><br>
                <input type = "text" name = "newProdPrice" placeholder ="New Item Price"><br><br>
                <input type = "text" name = "newProdDescrip" placeholder ="New Item Description"><br><br>
                <button class = "btn btn-primary" type = "submit">Submit</button>
              </form>
            </div>
          </div>
        </div>
      </div>
</body>
</html>