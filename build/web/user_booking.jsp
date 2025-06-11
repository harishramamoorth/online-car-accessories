<%@ include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Car Accessories Portal</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />


<style type="text/css">
<!--
.style4 {
	color: #99FF00;
	font-weight: bold;
}
.style5 {color: #000000}
-->
 #rr{
 background-color: darkblue;
    }
.style1 {
	font-size: 36px;
	color: #99FF00;
	font-weight: bold;
}
.style6 {font-size: 16px}
.style7 {font-size: 14px}
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
            <li><a href="user_search.jsp">Search</a></li>
            <li><a href="user_booking.jsp" class="active">Booking</a></li>
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
<form action="" method="post" name="form1" id="form1" >
                        <p>&nbsp;</p>
                       
                           <table width="99%" border="0" align="center">
                            <%       
                               String uid=(String) session.getAttribute("uid");
                                ResultSet rs0 = stmt3.executeQuery("select * from book where uid='"+uid+"' ");
                                int s = 0;
                                while (rs0.next()) {
                                    if (s == 0) {
                            %>
                            <tr><td height="45" colspan="11"><div align="center">
                              <div align="center" class="style4">Booking Details  </div></td>
                             </tr>
                            <tr>
                                <td></td>
                              <td width="31" height="32"><h4 align="center" class="style1"><strong><span class="style2 style5 style7"><em>Id</em></span></strong></h4></td>
                                <td width="139"><h4 align="center" class="style7 style6 style3 style5"><strong>User Name</strong></h4></td>
                                <td width="162"><h4 align="center" class="style6 style7 style3 style5"><strong><strong>Accessory</strong></strong></h4></td>
                                
                                <td width="213"><h4 align="center" class="style7 style6 style3 style5"><strong>Price</strong></h4></td>
                                <td width="185"><h4 align="center" class="style7 style6 style3 style5"><strong>Car</strong></h4></td>

                                <td width="162"><h4 align="center" class="style7 style6 style3 style5"><strong>Model</strong></h4></td>
								 <td width="162"><h4 align="center" class="style7 style6 style3 style5"><strong>Year</strong></h4></td>
                                                                   <td width="213"><h4 align="center" class="style7 style6 style3 style5"><strong>Date</strong></h4></td>
                                <td width="185"><h4 align="center" class="style7 style6 style3 style5"><strong>Contact</strong></h4></td>

                                <td width="162"><h4 align="center" class="style7 style6 style3 style5"><strong>Cancel</strong></h4></td>
                             <td></td>
                            </tr>
                            <%
                                }
                                s++;

                            %>
                            <tr>
                                 <td></td>
                                <td height="42"><div align="center" class="style8">
                                            <% out.print(s);%>
                                       </div></td>
                               
                                        <td><div align="center" class="style8">
                                            <% out.print(rs0.getString("uname"));%>
                                        </div></td>
                                <td><div align="center" class="style8">
                                            <% out.print(rs0.getString("acce"));%>
                                        </div></td>
                                <td><div align="center" class="style8">
                                            <% out.print(rs0.getString("price"));%>
                                      </div></td>
                                <td><div align="center" class="style8">
                                            <% out.print(rs0.getString("car"));%>
                                       </div></td>
                                     
                                         <td><div align="center" class="style8">
                                            <% out.print(rs0.getString("model"));%>
                                    </div></td>
                                    
                                    
                                    
                                     <td><div align="center" class="style8">
                                            <% out.print(rs0.getString("year"));%>
                                      </div></td>
                                <td><div align="center" class="style8">
                                            <% out.print(rs0.getString("date"));%>
                                       </div></td>
                                     
                                         <td><div align="center" class="style8">
                                            <% out.print(rs0.getString("contact"));%>
                                    </div></td>
                                    
                                    
                                        <td><div align="center" class="style8">
                                                    <a href="delete.jsp?id=2&fid=<% out.print(rs0.getString("id")); %>" class="style9">Cancel Booking</a>
                                      </div></td>
                                         <td></td>
                            </tr>
                            <%

                                }
                            %>
  </table>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
</form>
</div><!---page-wrap-End--->
<div class="footer-wrap">
  <div class="wrap">
   
    <div class="panel marRight30">
      <div class="title">
        <!--<h1>Newsletter</h1>-->
      </div><!--
      <div class="content">
        <ul>
          <li>
            <input name="input" type="text"  class="input-newsletter"/>
          </li>
          <li>
            <input type="button" class="button" value="Signup" />
          </li>
        </ul>-->
        <p></p>
        <!--<span><a href="#">Unsubscribe</a></span> </div>-->
    </div>
    <div class="panel">
      <div class="title">
          <h1><u>Contact us </u>:</h1>
      </div>
      <div class="cotact">
        <ul>
          <li><img src="images/icon6.png" alt="" />9344508260</li>
          <li><img src="images/icon7.png" alt="" /><a href="mailto:info@companyname.com">onlinecaraccessories@gmail.com</a></li>
          <li><img src="images/icon8.png" alt="" />Name of site owner is Harish</li>
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
