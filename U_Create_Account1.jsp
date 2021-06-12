<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Create_Account</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #3366FF;
	font-size: 26px;
}
.style2 {font-size: 26px}
.style3 {
	color: #FF0000;
	font-style: italic;
	font-weight: bold;
}
.style4 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
	   <%String user=(String)application.getAttribute("user");%>
        <ul>
          <li><a href="usermain.jsp"><span>Home Page</span></a></li>
          <li  class="active"><a href="#"><span><%=user%></span></a></li>
          <li><a href="userlogin.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style1 style2">Learning Customer Behaviors for Effective Load Forecasting</h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
       
		<h2 class="style3" >Created Account Status!!! </h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
		 
		 

        			  <%@ include file="connect.jsp" %>
                      <%@ page import="java.io.*" %>
                      <%@ page import="java.util.*" %>
                      <%@ page import="com.oreilly.servlet.*" %>
                      <%
			       
					String uname=(String)application.getAttribute("user");
				    
					
					try {
						
							
		String accno=request.getParameter("accno");
		String branch=request.getParameter("branch");
		String email=request.getParameter("email");
		String mno =request.getParameter("mobile");
		String addr =request.getParameter("address");
		String amount =request.getParameter("amount");
		
		
						
			 			String query1="select * from account  where acc_no='"+accno+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
</p>
                    </p>
                    <p class="style6">Account Number Already Exist</p>
                    <p class="style5">&nbsp;</p>
                    <%
							
							
				%>
                    <p align="left"><a href="usermain.jsp" class="style5 style14">Back</a></p>
                    <%
				
					   }
					   else
					   {
					   
					
PreparedStatement ps=connection.prepareStatement("insert into account(acc_no,user,address,email,mob,branch,amount) values(?,?,?,?,?,?,?)");
						ps.setString(1,accno);
						ps.setString(2,uname);
						ps.setString(3,addr);
						ps.setString(4,email);	
						ps.setString(5,mno);
						ps.setString(6,branch);
						ps.setString(7,amount);
					
						
				       
						
											
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                    <p class="style6">Account Created Successfully</p>
                    <p>&nbsp; </p>
                    <p>
                      <%	
							
			%>
                    </p>
                    <p align="left"><a href="usermain.jsp" class="style16">Back</a></p>
                    <%
			
					}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
                    </p>
<p>&nbsp;</p>
                    <p>&nbsp;</p>
        </form>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="usermain.jsp">Home</a></li>
            <li><a href="userlogin.jsp">Logout</a></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <ul class="ex_menu">
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>