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
    <h1>
        customer signup backpage

    </h1>
    <div>
        <%
            String firstName = request.getParameter("fname");
            String lastName = request.getParameter("lname");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String street = request.getParameter("street");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String zipcode = request.getParameter("zipcode");
            String confirmPass = request.getParameter("confirmPass");
            String user = "root";

            Date date = Calendar.getInstance().getTime();  
            DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");  
            String salt = dateFormat.format(date); 
            String hashedPWord = null;
            
            try{
                java.sql.Connection con; 
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a", user, "cs157a"); 
                out.println("Connection made");
                MessageDigest md = MessageDigest.getInstance("SHA-512");
	            md.update(salt.getBytes(StandardCharsets.UTF_8));
	            byte[] bytes = md.digest(confirmPass.getBytes(StandardCharsets.UTF_8));
	            StringBuilder sb = new StringBuilder();
	            for(int i=0; i < bytes.length ;i++)
	                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
	            
                hashedPWord = sb.toString();
                out.println("passed pword hashing");
                Statement stmt=con.createStatement();
                String query = "INSERT INTO grocerymart.customer (first_name, last_name, email, phone, street, city, state, zipcode, salt_key, password_hashed)" 
                + "VALUES ('" + firstName + "','" + lastName + "', '" + email + "', '" + phone + "', '" + street + "', '" + city + "', '" + state + "', '" + zipcode + "', '" + salt + "', '" + hashedPWord + "')";
                stmt.executeUpdate(query);
                out.println("Successfully inserted items");
                stmt.close();
                con.close();
            }
            catch(Exception e){
                e.printStackTrace();
            }
        %>
    </div>
</html>