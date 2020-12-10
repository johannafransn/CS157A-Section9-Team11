<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*" %> 

<html>
    <div>
        <%  
            String user = "root";
            String newProdName = request.getParameter("prod_name");
            String newProdPrice = request.getParameter("prod_price");
            String newProdDescription = request.getParameter("prod_descrip");
            
            try{
                java.sql.Connection con;
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a", user, "cs157a");
                Statement stmt=con.createStatement();
                String insertNewItem = "INSERT INTO grocerymart.products (price, product_name, product_description) VALUES('" + newProdPrice + "','" + newProdName + "','" + newProdDescription + "');";
                stmt.executeUpdate(insertNewItem);
                con.close();
                out.println("<meta http-equiv='refresh' content='0;URL=../market_main.jsp'>");
            }
            catch(Exception e){
                out.println(e);
            }
        %>
    </div>
</html>