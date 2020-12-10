<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*" %> 


<html>
    <div>
        <%  
            String user = "root";
            String prod_id = request.getParameter("delete");
            try{
                java.sql.Connection con;
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a", user, "cs157a");
                Statement stmt=con.createStatement();
                String deleteCategoryProd = "DELETE FROM grocerymart.categories WHERE product_id = '" + prod_id + "';";
                String deleteProduct = "DELETE FROM grocerymart.products WHERE product_id = '" + prod_id + "';";
                stmt.executeUpdate(deleteCategoryProd);
                stmt.executeUpdate(deleteProduct);
                con.close();
                out.println("<meta http-equiv='refresh' content='0;URL=../market_main.jsp'>");
            }
            catch(Exception e){
                out.println(e + " " + e.getMessage());
            }

        %>
    </div>
</html>