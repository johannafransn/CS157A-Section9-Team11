<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.sql.*" %> 
<%@ page import = "java.util.Date" %> 
<%@ page import = "java.text.DateFormat" %> 
<%@ page import = "java.text.SimpleDateFormat" %> 
<%@ page import = "java.util.Calendar" %> 
<%@ page import = "java.security.MessageDigest" %> 
<%@ page import = "java.security.NoSuchAlgorithmException" %> 
<%@ page import = "java.nio.charset.StandardCharsets" %> 
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.JSONValue"%>
<%@ page import="org.json.simple.JSONArray"%>
<html>
    <h1>
        backpage
    </h1>


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
            String query = "SELECT store_email, salt_key, password_hashed FROM grocerymart.markets WHERE store_email = '" + email + "';";
            ResultSet rs=stmt.executeQuery(query);
            rs.next();
            resultEmail = rs.getString("store_email");
            salt = rs.getString("salt_key");
            hpword = rs.getString("password_hashed");

            if(!resultEmail.equals(email))
                out.println("Incorrect email.");
                

            MessageDigest md = MessageDigest.getInstance("SHA-512");
	        md.update(salt.getBytes(StandardCharsets.UTF_8));
	        byte[] bytes = md.digest(password.getBytes(StandardCharsets.UTF_8));
	        StringBuilder sb = new StringBuilder();
	        for(int i=0; i < bytes.length ;i++)
	            sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
	            
            hashedPWord = sb.toString();

            if(!hashedPWord.equals(hpword))
                out.println("Incorrect Password.");
            else
                out.println("Sucessfully logged in.");
                   
        }
        catch(Exception e){
            out.println("Incorrect email" + e);
        }
        %>
</html>
