<%@ include file="include/dbconnect.jsp" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*, java.util.List, java.io.File, java.util.Iterator"%>
<%@ page import="org.apache.commons.io.*" %>
<%
    try
    {
     String btn=request.getParameter("adminsubmit");
     if(btn.equals("Login"))
     {
         String adminname=request.getParameter("aname");
         String adminpass=request.getParameter("apass");
         if(adminname.equals("admin")&&adminpass.equals("admin"))
         {
             %>
             <script language="javascript">
                 alert("Login Success");
                 window.location.href="admin_home.jsp";
             </script>
             <%
         }
         else
         {
             %>
             <script language="javascript">
                 alert("Login Failed");
                 window.location.href="login.jsp";
             </script>
             <%
         }
     }
    }
    catch(Exception e)
    {
        
    }
%>
<%
try
{
    String btn=request.getParameter("Submit");
    if(btn.equals("Register"))
    {
        String pass=request.getParameter("uupass");
        String cpass=request.getParameter("uucpass");
        if(pass.equals(cpass))
        {
        
        
        String name=request.getParameter("uuname");
        String gender=request.getParameter("gender");
        String contact=request.getParameter("contact");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        String uname=request.getParameter("uuuname");
      
        
        String sql="select max(id) as maxid from user";
        ResultSet rs=stmt.executeQuery(sql);
        int id1=0;
        if(rs.next())
        {
            id1=rs.getInt("maxid");
        }
        int id2=id1+1;
        String sql1="insert into user values('"+id2+"','"+name+"','"+gender+"','"+contact+"','"+email+"','"+address+"','"+uname+"','"+pass+"','"+cpass+"')";
        int n=stmt.executeUpdate(sql1);
        if(n==1)
        {
            
            %>
            <script>
                alert("Registration Successful");
                window.location.href="login.jsp";
            </script>
             <%
        }
        
        }
        
    }
}
catch(Exception e)
{
    
}

%>

<%
try
{
     String btn=request.getParameter("usersubmit");
    if(btn.equals("Login"))
    {
       String comname=request.getParameter("uname");
       String compass=request.getParameter("upass");
       
     String sql2="select * from user where uname='"+comname+"' && pass='"+compass+"'";
     ResultSet rs1=stmt1.executeQuery(sql2);
     if(rs1.next())
     {
        String id=rs1.getString("id");
        session.setAttribute("uid", id);
         String uname=rs1.getString("name");
        session.setAttribute("uname", uname);
         %>
         <script>
             alert("Login success");
             window.location.href="user_home.jsp";
         </script>
            <%
     }
     else
     {
         %>
              <script>
             alert("Login Failed");
             window.location.href="login.jsp";
         </script>
            <%
     }
       
    }
}
catch(Exception e)
{
    
}
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Car Accessories Portal</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
 <style type="text/css">
<!--

#admin
{
    display: none;
}
#user
{
    display: none;
}
#reg
{
    display: none;
}
#for
{
    display: none;
}
-->
        </style>
        <style>
    #rr{
        background-color: darkblue;
    }
.style1 {
	font-size: 36px;
	color: #99FF00;
	font-weight: bold;
}
.style3 {font-size: 16px; color: #000000; font-weight: bold; }
        </style>
        
         <script>
            function myfun()
            {
                 var re=document.getElementById("reg");
                var des=document.getElementById("desi").value;
                var adm=document.getElementById("admin");
                var use=document.getElementById("user");
                console.log(des);
                
                 if(des==="Admin")
        {
            re.style.display="none";
              use.style.display="none";
           if(adm.style.display=="block")
           {
               adm.style.display="none";
           }
           else
           {
               adm.style.display="block";
           }
        }
        else if(des==="<-- Select -->")
        {
            re.style.display="none";
             adm.style.display="none";
              use.style.display="none";
        }
        else if(des==="User")
        {
            re.style.display="none";
             adm.style.display="none";
            if(use.style.display=="block")
           {
               use.style.display="none";
           }
           else
           {
               use.style.display="block";
           }
        }
                
            }
            function myfun1()
            {
                    var tt=document.getElementById("for");
                    tt.style.display="none";
                var re=document.getElementById("reg");
                 if(re.style.display=="block")
           {
               re.style.display="none";
           }
           else
           {
               re.style.display="block";
           }
            }
            function myfun3()
            {
                var re=document.getElementById("reg");
                re.style.display="none";
                var tt=document.getElementById("for");
                if(tt.style.display=="block")
                {
                    tt.style.display="none";
                }
                else
                {
                    tt.style.display="block";
                }
            }
            function myfun4()
            {
                if(document.form1.uuname.value=="")
                {
                    alert("Enter  Name");
                    document.form1.uuname.focus();
                    return false;
                }
                 if(document.form1.contact.value=="")
                {
                    alert("Enter Contact Number");
                    document.form1.contact.focus();
                    return false;
                }
                 if(document.form1.contact.value!="")
                {
                    var z=document.form1.contact.value;
                     if(!/^[0-9]+$/.test(z)){
                         alert("enter number only");
                         document.form1.contact.focus();
                         return false;
                     }
                }
                if(document.form1.contact.value!="")
                {
                    var a=document.form1.contact.value;
                    if(!(a.length==10))
                    {
                        alert("enter 10 digit number");
                        document.form1.contact.focus();
                        return false;
                    }
                }
                 if(document.form1.email.value=="")
                {
                    alert("Enter Email");
                    document.form1.email.focus();
                    return false;
                }
                 if (document.form1.email.value != "")
                {
                    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
                    if(document.form1.email.value.match(mailformat))  
                    {  
                    }  
                    else  
                    {  
                    alert("Enter invalid email address!");  
                    document.form1.email.focus();  
                     return false;  
                    }  
                    }
                 if(document.form1.address.value=="")
                {
                    alert("Enter Address");
                    document.form1.address.focus();
                    return false;
                }
                 if(document.form1.uuuname.value=="")
                {
                    alert("Enter User Name");
                    document.form1.uuuname.focus();
                    return false;
                }
                 if(document.form1.uupass.value=="")
                {
                    alert("Enter Password");
                    document.form1.uupass.focus();
                    return false;
                }
                 if(document.form1.uucpass.value=="")
                {
                    alert("Enter Password");
                    document.form1.uucpass.focus();
                    return false;
                }
            }
        </script>

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
            <li><a href="login.jsp" class="active">Login</a></li>
           
          
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
            <div  ><img src="https://www.auto-facts.org/wp-content/uploads/2019/01/f1ad144e02c4314a79fc77998f80a314.jpeg" width="1000" height="430" alt="" /></div>
    </div>
    
    
    <div class="shadow"></div>
</div><!---banner-wrap-End--->
<table width="987">
  <tr>
    <td height="47" colspan="4"><div align="center" class="style3">Login </div></td>
  </tr>
  <tr>
    <td width="364" height="51">&nbsp;</td>
    <td width="117"><div align="center" class="style2">Designation : </div></td>
    <td width="273"><select name="dsi" class="btn-danger" onChange="myfun()" id="desi">
      <option>&lt;-- Select --&gt;</option>
      <option>Admin</option>
      <option>User</option>
    </select></td>
    <td width="213">&nbsp;</td>
  </tr>
</table>
<div id="admin">
    <form id="form" name="form" method="post" action="">
<table width="989">
  <tr>
    <td height="42" colspan="4"><div align="center" class="style3">Admin</div></td>
    </tr>
  <tr>
    <td width="356" height="41">&nbsp;</td>
    <td width="125"><div align="center" class="style2">Name : </div></td>
    <td width="277"><input name="aname" type="text" class="style2"></td>
    <td width="211">&nbsp;</td>
  </tr>
  <tr>
    <td height="42">&nbsp;</td>
    <td><div align="center" class="style2">Password : </div></td>
    <td><input name="apass" type="password" class="style2"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="44" colspan="4"><div align="center">
      <input name="adminsubmit" type="submit" class="badge-success" value="Login">
    </div></td>
    </tr>
</table>
    </form>
</div>
                 <form id="form1" name="form1" method="post" action="">
<div id="user">
    
<table width="987">
  <tr>
    <td height="40" colspan="4"><div align="center" class="style3">User </div></td>
    </tr>
  <tr>
    <td width="352" height="41">&nbsp;</td>
    <td width="129"><div align="center" class="style2">Name : </div></td>
    <td width="278"><input name="uname" type="text"></td>
    <td width="208">&nbsp;</td>
  </tr>
  <tr>
    <td height="42">&nbsp;</td>
    <td><div align="center" class="style2">Password : </div></td>
    <td><input name="upass" type="password"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="42" colspan="4"><div align="center">
      <input name="usersubmit" type="submit" class="badge-success" value="Login">
    </div></td>
    </tr>
  <tr>
    <td height="44">&nbsp;</td>
    <td>&nbsp;</td>
    <td><input name="Submit" type="button" class="badge-important" onClick="myfun1()" value="New Registration...?"></td>
    <td>&nbsp;</td>
  </tr>
<!--   <tr>
    <td height="44">&nbsp;</td>
    <td>&nbsp;</td>
    <td><input name="Submit" type="button" class="badge-important" onClick="myfun3()" value="Forgot Password"></td>
    <td>&nbsp;</td>
  </tr>-->
</table>
</div>

<div id="reg">
<table width="991">
  <tr>
    <td height="42" colspan="4"><div align="center" class="style3">User Registration : </div></td>
    </tr>
  <tr>
    <td width="366" height="43">&nbsp;</td>
    <td width="116"><div align="center" class="style2">Name : </div></td>
    <td width="273"><input name="uuname" type="text" class="style2"></td>
    <td width="216">&nbsp;</td>
  </tr>
  <tr>
    <td height="42">&nbsp;</td>
    <td><div align="center" class="style2">Gender : </div></td>
    <td><select name="gender" class="style2">
      <option>Male</option>
      <option>Female</option>
    </select></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="43">&nbsp;</td>
    <td><div align="center"><span class="style2">Contact : </span></div></td>
    <td><input name="contact" type="text" class="style2"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="42">&nbsp;</td>
    <td><div align="center" class="style2">Email : </div></td>
    <td><input name="email" type="text" class="style2"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="43">&nbsp;</td>
    <td><div align="center" class="style2">Address : </div></td>
    <td><input name="address" type="text" class="style2"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="41">&nbsp;</td>
    <td><div align="center" class="style2">User name : </div></td>
    <td><input name="uuuname" type="text" class="style2"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="42">&nbsp;</td>
    <td><div align="center" class="style2">Password : </div></td>
    <td><input name="uupass" type="password" class="style2"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="41">&nbsp;</td>
    <td><div align="center" class="style2">Confirm Password : </div></td>
    <td><input name="uucpass" type="password" class="style2"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="42" colspan="4"><div align="center">
            <input name="Submit" type="submit" class="btn-success" onClick="return myfun4()" value="Register">
    </div></td>
    </tr>
</table>
</div>
                     <div id="for">
<table width="983">
  <tr>
    <td height="48" colspan="4"><div align="center" class="style1">Forgot Password : </div></td>
    </tr>
  <tr>
    <td width="308" height="47">&nbsp;</td>
    <td width="171"><div align="center" class="style2">User Name : </div></td>
    <td width="279"><input name="user" type="text"></td>
    <td width="205">&nbsp;</td>
  </tr>
  <tr>
    <td height="42">&nbsp;</td>
    <td><div align="center" class="style2">Contact : </div></td>
    <td><input name="con" type="text"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="45">&nbsp;</td>
    <td><div align="center" class="style2">New Password : </div></td>
    <td><input name="nnpass" type="password"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="47">&nbsp;</td>
    <td><div align="center"><span class="style2">Re-Enter Password : </span></div></td>
    <td><input name="rrpass" type="password"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="49" colspan="4"><div align="center">
      <input name="Submit" type="submit" class="badge-info" value="Change">
    </div></td>
    </tr>
</table>
                     </div>
             </form>


</div><!---page-wrap-End--->

<div class="footer-wrap">
  <div class="wrap">
   
    <div class="panel marRight30">
      <div class="title">
      <!-- <h1>Newsletter</h1> -->
      </div><!--
      <div class="content">
        <ul>
          <li> 
            <input name="input" type="text"  class="input-newsletter"/>
          </li>
          <li> 
            <input type="button" class="button" value="Signup" />
          </li> 
        </ul>  -->
      <!--  <p>Enter the queries.</p>
        <span><a href="#">Unsubscribe</a></span>  </div>-->
    </div> 
    <div class="panel">
      <div class="title">
          <h1><u>Contact us </u>:</h1>
      </div>
      <div class="cotact">
        <ul>
          <li><img src="images/icon6.png" alt="" />9344508260</li>
          <li><img src="images/icon7.png" alt="" /><a href="mailto:info@companyname.com">onlinecaraccessories@gmail.com</a></li>
          <li><img src="images/icon8.png" alt="" />Name of site owner is <b>Harish</b></li>
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
