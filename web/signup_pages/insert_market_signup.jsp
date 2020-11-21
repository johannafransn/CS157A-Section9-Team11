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
        market signup backpage
    </h1>
    <div>
        <%
        String storeName = request.getParameter("storeName");
        String storeDescrip = request.getParameter("description");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zipcode = request.getParameter("zipcode");
        String confirmPass = request.getParameter("confirmPass");
        String monOpen = request.getParameter("monOpen");
        String monClose = request.getParameter("monClose");
        String tuesOpen = request.getParameter("tuesOpen");
        String tuesClose = request.getParameter("tuesClose");
        String wedOpen = request.getParameter("wedOpen");
        String wedClose = request.getParameter("wedClose");
        String thursOpen = request.getParameter("thursOpen");
        String thursClose = request.getParameter("thursClose");
        String friOpen = request.getParameter("friOpen");
        String friClose = request.getParameter("friClose");
        String satOpen = request.getParameter("satOpen");
        String satClose = request.getParameter("satClose");
        String sunOpen = request.getParameter("sunOpen");
        String sunClose = request.getParameter("sunClose");
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

            JSONArray monArray = new JSONArray();
            monArray.add(monOpen);
            monArray.add(monClose);
            JSONArray tuesArray = new JSONArray();
            tuesArray.add(tuesOpen);
            tuesArray.add(tuesClose);
            JSONArray wedArray = new JSONArray();
            wedArray.add(wedOpen);
            wedArray.add(wedClose);
            JSONArray thursArray = new JSONArray();
            thursArray.add(thursOpen);
            thursArray.add(thursClose);
            JSONArray friArray = new JSONArray();
            friArray.add(friOpen);
            friArray.add(friClose);
            JSONArray satArray = new JSONArray();
            satArray.add(satOpen);
            satArray.add(satClose);
            JSONArray sunArray = new JSONArray();
            sunArray.add(sunOpen);
            sunArray.add(sunClose);

            JSONObject storeHours = new JSONObject();
            storeHours.put("Monday", monArray);
            storeHours.put("Tuesday", tuesArray);
            storeHours.put("Wednesday", wedArray);
            storeHours.put("Thursday", thursArray);
            storeHours.put("Friday", friArray);
            storeHours.put("Saturday", satArray);
            storeHours.put("Sunday", sunArray);
            out.println("JSON object created: " + storeHours);
            Statement stmt=con.createStatement();
            String query = "INSERT INTO grocerymart.markets (store_name, store_description, store_hours, store_email, store_phone, street, city, state, zipcode, salt_key, password_hashed)" 
            + "VALUES ('" + storeName + "','" + storeDescrip + "', '" + storeHours + "', '" + email + "', '" + phone + "', '" + street + "', '" + city + "', '" + state + "', '" + zipcode + "', '" + salt + "', '" + hashedPWord + "')";
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