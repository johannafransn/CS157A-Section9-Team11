<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*" %> 

<html>
    <div>
        <%
            String user = "root";
            String prodName = request.getParameter("prodName");
            String prodNewName = request.getParameter("newProdName");
            String prodPrice = request.getParameter("newProdPrice");
            String prodDescrip = request.getParameter("newProdDescrip");
            String query = "";

            try{
                java.sql.Connection con;
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a", user, "cs157a");
                Statement stmt=con.createStatement();
                String findItem = "SELECT * FROM grocerymart.products WHERE product_name = '" + prodName + "';";
                ResultSet rs = stmt.executeQuery(findItem);
                rs.next();
                int prodID = rs.getInt("product_id");
                if(prodNewName.length() == 0){
                    prodNewName = rs.getString("product_name");
                }
                if(prodPrice.length() == 0){
                    prodPrice = String.valueOf(rs.getInt("price"));
                }
                if(prodDescrip.length() == 0){
                    prodDescrip = rs.getString("product_description");
                }

                String updateItem = "UPDATE grocerymart.products SET product_name = '" + prodNewName + "', price = " + prodPrice + " , product_description = '" +
                                       prodDescrip + "' WHERE product_id = " + prodID + ";";
                stmt.executeUpdate(updateItem);
                con.close();
                out.println("<meta http-equiv='refresh' content='0;URL=../market_main.jsp'>");
            }
            catch(Exception e){
                out.println(e);
            }

        %>
    </div>
</html>
