<%@ include file="include/dbconnect.jsp" %>
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%
String uid=(String) session.getAttribute("uid");
String uname=(String) session.getAttribute("uname");
String fid=request.getParameter("fid");
String sql="select * from acc where id='"+fid+"'";
ResultSet rs=stmt.executeQuery(sql);
String acce="";
String price="";
String car="";
String model="";
String year="";
String date="";
String img="";
String aid="";
if(rs.next())
{
  acce=rs.getString("name");
  price=rs.getString("price");
  car=rs.getString("car");
  model=rs.getString("model");
  year=rs.getString("year");
  date=rs.getString("date");
  img=rs.getString("img");
  aid=rs.getString("id");
}

try
{
    String btn=request.getParameter("Submit");
    if(btn.equals("Book"))
    {
   
       String contact=request.getParameter("contact");
        String email=request.getParameter("email");
         String location=request.getParameter("location");
          String address=request.getParameter("address");
             
          String hh="select max(id) as maxid from book";
          int id1=0;
          ResultSet rs2=stmt4.executeQuery(hh);
          if(rs2.next())
          {
              id1=rs2.getInt("maxid");
          }
                      
                    int id2 = id1 + 1;
                    out.print(id2);
          
          String pp="insert into book values('"+id2+"','"+uid+"','"+uname+"','"+aid+"','"+acce+"','"+price+"','"+car+"','"+model+"','"+year+"','"+date+"','"+contact+"','"+email+"','"+address+"')";
   int n=stmt3.executeUpdate(pp);
   if(n==1)
   {
       %>
       <script>
           alert("Booking Successful");
           window.location.href="user_booking.jsp";
       </script>
<%
   }
    }
}
catch(Exception e)
{
    
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
.style3 {
	color: #000000;
	font-size: 16px;
	font-weight: bold;
}
.style4 {color: #000000}
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
        	<li><a href="index.jsp" >Home</a></li>
            <li><a href="user_search.jsp" class="active">Search</a></li>
            <li><a href="user_booking.jsp">Booking</a></li>
            <li><a href="index.jsp">Logout</a></li>
           
          
        </ul>
    </div>
    
    <div class="socia-wrap">
	<div class="socail">
		<ul>
        	<li><a href="https://theautomotivedude.com/engine/common-car-problems/"><img src="images/aim.png" alt="" /></a></li>
        	<li><a href="https://www.facebook.com/login.php?skip_api_login=1&api_key=966242223397117&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fsharer%2Fsharer.php%3Fu%3Dhttps%253A%252F%252Fwww.autovista.in%252Fblog%252Ftop-essential-car-accessories-to-buy&cancel_url=https%3A%2F%2Fwww.facebook.com%2Fdialog%2Fclose_window%2F%3Fapp_id%3D966242223397117%26connect%3D0%23_%3D_&display=popup&locale=en_GB"><img src="images/facebook.png" alt="" /></a></li>
            <li><a href="https://x.com/"><img src="images/twwtter.png" alt="" /></a></li>
            <li><a href="https://www.linkedin.com/login"><img src="images/linkedin.png" alt="" /></a></li>
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


 <form id="form" name="form" method="post" action="">

     
     <table width="1156">
  <tr>
    <td height="58" colspan="4"><div align="center" class="style3">Booking Details : </div></td>
    </tr>
  <tr>
    <td width="405" height="38">&nbsp;</td>
    <td colspan="2" rowspan="2"><div align="center"><img src="upload/<% out.print(img); %>" width="150" height="150" alt=""></img></div></td>
    <td width="343">&nbsp;</td>
  </tr>
  <tr>
    <td height="38">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="56">&nbsp;</td>
    <td width="152"><div align="center" >Accessory : </div></td>
    <td width="236" class="style4"><% out.print(acce); %></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="38">&nbsp;</td>
    <td><div align="center">Price : </div></td>
    <td class="style4"><% out.print(price); %></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="40">&nbsp;</td>
    <td><div align="center">Car : </div></td>
    <td class="style4"><% out.print(car); %></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="37">&nbsp;</td>
    <td><div align="center">Model : </div></td>
    <td class="style4"><% out.print(model); %></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="39">&nbsp;</td>
    <td><div align="center">Year : </div></td>
    <td class="style4"><% out.print(year); %></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="40">&nbsp;</td>
    <td><div align="center">Manufacturing Date : </div></td>
    <td class="style4"><% out.print(date); %></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="41">&nbsp;</td>
    <td><div align="center">User Name : </div></td>
    <td class="style4"><% out.print(uname); %></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="43">&nbsp;</td>
    <td><div align="center">Contact : </div></td>
    <td><input name="contact" type="text" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="37">&nbsp;</td>
    <td><div align="center">Email : </div></td>
    <td><input name="email" type="text" /></td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="37">&nbsp;</td>
    <td><div align="center">Location : </div></td>
    <td><input name="location" type="text" /></td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="37">&nbsp;</td>
    <td><div align="center">Address : </div></td>
    <td><input name="address" type="text" /></td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="37">&nbsp;</td>
    <td><div align="center">Zip Code  : </div></td>
    <td><input name="zip" type="text" /></td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="37">&nbsp;</td>
    <td><div align="center">Card Number  : </div></td>
    <td><input name="cno" type="text" /></td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="37">&nbsp;</td>
    <td><div align="center">CCV : </div></td>
    <td><input name="ccv" type="text" /></td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="37">&nbsp;</td>
    <td><div align="center">Name Of Bank : </div></td>
    <td><input name="nob" type="text" /></td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="37" colspan="4"><div align="center">
      <input name="Submit" type="submit" value="Book" />
    </div></td>
    </tr>
</table>

     
     
     
</form>
                    



</div><!---page-wrap-End--->
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
        </ul>
        <p>Enter the queries.</p>
        <span><a href="#">Unsubscribe</a></span> </div>
    </div>
    <div class="panel">
      <div class="title">
        <h1>Contact us </h1>
      </div>
      <div class="cotact">
        <ul>
          <li><img src="images/icon6.png" alt="" />(000) 888 888888</li>
          <li><img src="images/icon7.png" alt="" /><a href="mailto:info@companyname.com">info@companyname.com</a></li>
          <li><img src="images/icon8.png" alt="" />Name of site owner</li>
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
        <p>Copyright (c) websitename. All rights reserved.
        <<a href="www.alltemplateneeds.com" class="active"> www.alltemplateneeds.com</a> > 
        Images From:<a href="www.photorack.net"> www.photorack.net</a></p>
        </div>
	</div>
</div><!---copyright-wrap-End--->
</body>
</html>
