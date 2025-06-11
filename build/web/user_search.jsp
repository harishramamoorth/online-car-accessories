<%@ include file="include/dbconnect.jsp" %>
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>

<%
int n=0;
try
{
    String btn=request.getParameter("Submit");
    if(btn.equals("Search"))
    {
        n=1;
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
.style2 {font-size: 16px}
.style3 {color: #000000}
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
					<table width="911">
  <tr>
    <td height="45" colspan="4"><div align="center" class="style1 style2 style3">Search Accessories : </div></td>
    </tr>
  <tr>
    <td width="242" height="52">&nbsp;</td>
    <td width="204"><span class="style2">Car Name Or Model Name: </span></td>
    <td width="325"><input name="name" type="text" class="style2" /></td>
    <td width="120">&nbsp;</td>
  </tr>
                                             <tr>
    <td width="242" height="52">&nbsp;</td>
    <td width="204"><span class="style2">Accessory Name: </span></td>
    <td width="325"><input name="acce" type="text" class="style2" /></td>
    <td width="120">&nbsp;</td>
  </tr>
  <tr>
    <td height="40" colspan="4"><div align="center">
      <input name="Submit" type="submit" class="btn-info" value="Search" />
    </div></td>
    </tr>
</table>
             
                        
                        <table width="908">
            <%
            if(n==1)
            {
                int s=0;
                int j=0;
                String name=request.getParameter("name").toString().trim();
                String acce=request.getParameter("acce").toString().trim();
                String sql="select * from acc where car='"+name+"'   ||   model='"+name+"' && name='"+acce+"'";
                ResultSet rs0=stmt.executeQuery(sql);
                while(rs0.next())
                {
                    if(s==0)
                    {
                        j=1;
                        %>
         <tr>
                              <td height="58" colspan="11"><div align="center" class="style6 style3">Accessories Details : </div></td>
                          </tr>
                            <tr>
                              
                                <td width="81"></td>
                              <td width="84" height="46"><h4 align="center" class="style3 style5 style2"><strong>Id</strong></h4></td>
                              <td width="90"><h4 align="center" class="style8 style3 style2"><strong>Accessory</strong></h4></td>
                              <td width="105"><h4 align="center" class="style8 style3 style2"><strong>Price</strong></h4></td>
                              <td width="100"><h4 align="center" class="style3 style8 style2"><strong>Car</strong></h4></td>
                              <td width="95"><h4 align="center" class="style8 style3 style2"><strong>Model</strong></h4></td>
                              <td width="101"><h4 align="center" class="style3 style8 style2"><strong>Year</strong></h4></td>
                               <td width="95"><h4 align="center" class="style8 style3 style2"><strong>Date</strong></h4></td>
                              <td width="101"><h4 align="center" class="style3 style8 style2"><strong>Image</strong></h4></td>
                               <td width="95"><h4 align="center" class="style8 style3 style2"><strong>Book</strong></h4></td>
                             
                             
                            <td width="95"></td>
                                
                                
                            </tr>
                            <%
                                }
                                s++;

                            %>
                            <tr>
                               <td></td>
                                <td height="42"><div align="center"><span class="style5">
                                            <% out.print(s);%>
                                        </span></div></td>
                               
                                        <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("name"));%>
                                        </span></div></td>
                                <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("price"));%>
                                        </span></div></td>
                                         <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("car"));%>
                                        </span></div></td>
                               <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("model"));%>
                                        </span></div></td>
                                        <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("year"));%>
                                        </span></div></td>
                                          <td><div align="center"><span class="style5">
                                            <% out.print(rs0.getString("date"));%>
                                        </span></div></td>
                                        <td><div align="center"><span class="style5">
                                       <img src="upload/<% out.print(rs0.getString("img"));%>" width="78" height="61">
                                   </span></div></td>
                                     <td><div align="center"><span class="style5">
                                                 <a href="book.jsp?fid=<% out.print(rs0.getString("id")); %>">Book</a>
                                        </span></div></td>
                                   
                               
                                   
                                   
                                  <td></td>    
                               
                            </tr>
            
            <%
                    }
                if(j==0)
    {
        %>
  <tr>
      <td height="49" colspan="5"><div align="center" class="style3"><% out.print("Data Not Found!!!!"); %>  </div></td>
  </tr>
  <%
    }
                }
                        
            
                %>
            
          
            </table> 
        </form>
                    



</div><!---page-wrap-End--->
<div class="footer-wrap">
  <div class="wrap">
   
    <div class="panel marRight30">
      <div class="title">
       <!-- <h1>Newsletter</h1>-->
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
       <!-- <span><a href="#">Unsubscribe</a></span> </div>-->
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
