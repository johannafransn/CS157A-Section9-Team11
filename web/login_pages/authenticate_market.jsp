<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*" %> 
<%@ page import = "java.util.Date" %> 
<%@ page import = "java.text.DateFormat" %> 
<%@ page import = "java.text.SimpleDateFormat" %> 
<%@ page import = "java.util.Calendar" %> 
<%@ page import = "java.security.MessageDigest" %> 
<%@ page import = "java.security.NoSuchAlgorithmException" %> 
<%@ page import = "java.nio.charset.StandardCharsets" %> 

<html>
    <%
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String user = "root";

        String hashedPWord = null;
        String salt = null;
        String resultEmail = null;
        String hpword = null;

        try{
            java.sql.Connection con;
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a", user, "cs157a");
            Statement stmt=con.createStatement();
            String query = "";
            ResultSet rs=null;
            try{
                query = "SELECT store_email, salt_key, password_hashed FROM grocerymart.markets WHERE store_email = '" + email + "';";
                rs = stmt.executeQuery(query);
                rs.next();
                resultEmail = rs.getString("store_email");
                salt = rs.getString("salt_key");
                hpword = rs.getString("password_hashed");
            
                MessageDigest md = MessageDigest.getInstance("SHA-512");
                md.update(salt.getBytes(StandardCharsets.UTF_8));
                byte[] bytes = md.digest(password.getBytes(StandardCharsets.UTF_8));
                StringBuilder sb = new StringBuilder();
                for(int i=0; i < bytes.length ;i++)
                    sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
        
                hashedPWord = sb.toString();

                if(!hashedPWord.equals(hpword)){
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Email or password incorrect');");
                    out.println("</script>");
                    out.println("<meta http-equiv='refresh' content='0.1;URL=market_login.jsp'>");
                    //String redirectLogin = "http://localhost:8080/web/login_pages/cust    omer_login.jsp";
                    //response.sendRedirect(redirectLogin);
                }

                else{
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Successfully logged on');");
                    out.println("</script>");
                    out.println("<meta http-equiv='refresh' content='0.1;URL=../main_pages/market_main.jsp'>");
                }
            }
            catch(SQLException e){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Email or password incorrect');");
                out.println("</script>");
                out.println("<meta http-equiv='refresh' content='0.1;URL=market_login.jsp'>");
        }
    }
    catch(Exception e){
        out.println(e + " " + e.getMessage());
    }
</html>
