<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*" %> 

<html>
    <div>
        <%  
            String user = "root";
            String couponType = request.getParameter("type");
            String couponAmount = request.getParameter("amount");
            String couponDescrip = request.getParameter("description");
            String couponDiscounted = request.getParameter("discounted");
            String usageLimit = request.getParameter("limit");
            try{
                java.sql.Connection con;
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a", user, "cs157a");
                Statement stmt=con.createStatement();
                String insertCoupon = "INSERT INTO grocerymart.coupons (valid, coupon_type, amount, coupon_description, num_used, cost_discounted, usage_limit)" 
                                        + "VALUES(1, '" + couponType + "', " + couponAmount + ", '" + couponDescrip + "', 0, " + couponDiscounted + ", " + usageLimit + ");";
                stmt.executeUpdate(insertCoupon);
                con.close();
                out.println("<meta http-equiv='refresh' content='0;URL=../market_main.jsp'>");
            }
            catch(Exception e){
                out.println(e);
            }
        %>
    </div>
</html>
            