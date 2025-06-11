<%@ include file="include/dbconnect.jsp" %> 
<%@page import="java.util.Random"%> 
<%@page import="java.sql.ResultSet"%>


<%
String fid=request.getParameter("fid");

String id=request.getParameter("id");

if(id.equalsIgnoreCase("1"))
{
    String sql="delete from acc where id='"+fid+"'";
    int n=stmt.executeUpdate(sql);
    if(n==1)
    {
        %>
        <script>
            alert("Accessory Removed");
            window.location.href="admin_view.jsp";
        </script>
<%
    }
}
else if(id.equalsIgnoreCase("2"))
{
    String sql="delete from book where id='"+fid+"'";
    int n=stmt.executeUpdate(sql);
    if(n==1)
    {
        %>
        <script>
            alert("Booking Canceled ...Payment Refund Successful");
            window.location.href="user_booking.jsp";
        </script>
<%
    }
}
else if(id.equalsIgnoreCase("3"))
{
    String sql="delete from job where id='"+fid+"'";
    int n=stmt.executeUpdate(sql);
    if(n==1)
    {
        %>
        <script>
            alert("Job Removed");
            window.location.href="company_viewjob.jsp";
        </script>
<%
    }
}


%>