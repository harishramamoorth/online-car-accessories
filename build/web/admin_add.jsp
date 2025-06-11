<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*, java.util.List, java.io.File, java.util.Iterator"%>
<%@ page import="org.apache.commons.io.*" %>
<%@ include file="include/dbconnect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Car Accessories Portal</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<style>
    #rr{
        background-color: darkblue;
    }
.style1 {
	font-size: 36px;
	color: #99FF00;
	font-weight: bold;
}
.style2 {
	color: #000000;
	font-weight: bold;
	font-size: 16px;
}
</style>
</head>
<body>

<!---header-wrap-End--->
<div id="rr">
<table width="1198">
  <tr>
    <td width="1133" height="71"><div align="center" class="style1"> Online Car Accessories Portal</div></td>
    </tr>
</table>
</div>
<div class="menu-wrap">
	<div class="menu">
		<ul>
        	<li><a href="admin_home.jsp" >Home</a></li>
            <li><a href="admin_add.jsp" class="active">Add</a></li>
            <li><a href="admin_view.jsp">View</a></li>
            <li><a href="admin_users.jsp">Users</a></li>
            <li><a href="admin_booking.jsp">Booking</a></li>
            <li><a href="index.jsp">Logout</a></li>
           
          
        </ul>
    </div>
    
    <div class="socia-wrap">
	<div class="socail">
		<ul>
        	<li><a href="#"><img src="images/aim.png" alt="" /></a></li>
        	<li><a href="#"><img src="images/facebook.png" alt="" /></a></li>
            <li><a href="#"><img src="images/twwtter.png" alt="" /></a></li>
            <li><a href="#"><img src="images/linkedin.png" alt="" /></a></li>
		</ul>
	</div>
</div>
</div><!---menu-wrap-End--->

<div class="banner-wrap">
	<div class="banner">
            <div ><img src="images/carr1.jpg" width="1000" height="430" alt="" /></div>
    </div>
    <div class="shadow"></div>
</div><!---banner-wrap-End--->
 <form id="f1" name="f1" method="post" action="#"  enctype="multipart/form-data" >	
<table width="1007">
  <tr>
    <td height="44" colspan="4"><div align="center" class="style2">Add Accessories  </div></td>
  </tr>
  <tr>
    <td width="351" height="40">&nbsp;</td>
    <td width="118"><div align="center">Name : </div></td>
    <td width="363"><input name="name" type="text" /></td>
    <td width="155">&nbsp;</td>
  </tr>
  <tr>
    <td height="40">&nbsp;</td>
    <td><div align="center">Price : </div></td>
    <td><input name="price" type="text" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="41">&nbsp;</td>
    <td><div align="center">Car Name : </div></td>
    <td><input name="cname" type="text" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="38">&nbsp;</td>
    <td><div align="center">Model : </div></td>
    <td><input name="model" type="text" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="42">&nbsp;</td>
    <td><div align="center">Year : </div></td>
    <td><input name="year" type="text" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="38">&nbsp;</td>
    <td><div align="center">Manufacturing Date : </div></td>
    <td><input type="date" name="date" required/></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="40">&nbsp;</td>
    <td><div align="center">Image : </div></td>
    <td><input name="img" type="file" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="40" colspan="4"><div align="center">
      <input name="Submit" type="submit" value="Add" />
    </div></td>
  </tr>
 
</table>
      <%
                            try {

                                String name = "";
                                String price = "";
                                String cname = "";
                                String model = "";
                               String year="";
                               String date="";
                              
                               
                            
                                String fileName = "";
                               

                                String ImagePath = "";
                                boolean isMultipart = FileUpload.isMultipartContent(request);

                                if (!isMultipart) {
                //                                                                 request.getRequestDispatcher("add_book.jsp").forward(request, response);
                                    return;
                                }

                                DiskFileUpload upload = new DiskFileUpload();

                                List items = upload.parseRequest(request);

                                Iterator itr = items.iterator();

                                while (itr.hasNext()) {

                                    FileItem item = (FileItem) itr.next();

                                    if (item.isFormField()) {

                                        String fieldName = item.getFieldName();

                                        if (fieldName.equals("name")) {
                                            name = item.getString();
                                        }
                                        if (fieldName.equals("price")) {
                                            price = item.getString();
                                        }
                                        if (fieldName.equals("cname")) {
                                            cname = item.getString();
                                        }
                                        if (fieldName.equals("model")) {
                                           model = item.getString();
                                        }
                                        if (fieldName.equals("year")) {
                                           year = item.getString();
                                        }
                                        if (fieldName.equals("date")) {
                                           date = item.getString();
                                        }
                                        
                                       

                                    } else {
                                       
                                        

                                        File f = new File(config.getServletContext().getRealPath("/") + "upload/");
                                        if (f.exists() == false) {
                                            f.mkdir();
                                        }
                                        File fullFile = new File(item.getName());
                                        File fileType = new File(item.getContentType());

                                        // ftype=""+fileType.getName();
                                        double filesize = item.getSize();
                                        double fs1 = filesize / (1024 * 1024);
                                        File savedFile = new File(getServletContext().getRealPath("/") + "upload/", fullFile.getName());

                                        item.write(savedFile);
                                        fileName = fullFile.getName();
                                        //fileSize=""+savedFile.length();

                                        ResultSet ns = stmt.executeQuery("select max(id) as maxid from acc");
                                        ns.next();
                                        int id1 = ns.getInt("maxid");
                                        int id2 = id1 + 1;

                                        String qq = "insert into acc values('" + id2 + "','" + name + "','" + price + "','" + cname + "','" + model + "','"+year+"','"+date+"','" + fileName + "')";
                                        int n = stmt.executeUpdate(qq);
                                        if (n == 1) {
                        %>
                        <script language="javascript">
                            alert("Add Successfully...");
                            window.location.href = "admin_add.jsp"
                        </script>

                        <%
                        } else {
                        %>
                        <script language="javascript">
                            alert("FAILED");
                            window.location.href="admin_add.jsp";
                        </script>

                        <%
                                        }
                                        // response.sendRedirect("admin_upload.jsp");

                                    }
                                
}

                            } catch (Exception e) {
                               // out.print(e.getMessage());
                            }
                        %>    

 </form>

</div><!---page-wrap-End--->
<!--
<div class="footer-wrap">
  <div class="wrap">
   
    <div class="panel marRight30">
      <div class="title">
        <h1>Newsletter</h1>
      </div>
      <div class="content">
        <ul>
          <li>
            <input name="input" type="text"  class="input-newsletter"/>
          </li>
          <li>
            <input type="button" class="button" value="Signup" />
          </li>
        </ul> -->
        <p>Enter the name to signup</p>
        <span><a href="#">subscribe</a></span> </div>
    </div>
    <div class="panel">
      <div class="title">
        <h1>Contact us </h1>
      </div>
      <div class="cotact">
        <ul>
          <li><img src="images/icon6.png" alt="" />9344508260</li>
          <li><img src="images/icon7.png" alt="" /><a href="mailto:info@companyname.com">onlinecaraccessories@gmail.com</a></li>
          <li><img src="images/icon8.png" alt="" />Name of site owner is harish</li>
        </ul>
      </div>
    </div>
    <div class="clearing"></div>
  </div>
</div><!---footer-wrap--->
<div class="clearing"></div>
<div class="copyright-wrap">
	<div class="wrap">
    	<div class="content">
       <marquee><p> Easy to buy acccessories</p></marquee>
        </div>
	</div>
</div><!---copyright-wrap-End--->
</body>
</html>
