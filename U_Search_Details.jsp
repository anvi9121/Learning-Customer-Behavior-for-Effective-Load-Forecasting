<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Usermain</title>
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
.style4 {color: #FFFFFF}
.style6 {color: #FF0000}
.style7 {font-weight: bold; color: #FF0000; }
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
       
		<h2 class="style3" >View Searched Product Details !!! </h2>
          <p class="infopost">&nbsp;</p>
           <table width="500" >
       
		<%
		String name=request.getParameter("name");
		int id=Integer.parseInt(request.getParameter("id")); 
		
						String s1="",s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s88="";
						int i=0;
					
						try 
						{	
						    						
							ArrayList al=new ArrayList();
							
						   	String sql="select * from products where id='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		if(rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(9);
								s3=rs.getString(10);
								s4=rs.getString(3);
								s5=rs.getString(4);
								s6=rs.getString(5);
								s7=rs.getString(6);
								s8=rs.getString(7);
								s88=rs.getString(9); // ecom
								int rank=rs.getInt(10);
								
								
								
					%>
					<tr>
					<td colspan="3">
					
				<img src="pimages.jsp?id=<%=i%>&value=<%="oimage"%>" width="130" height="100" align="middle" />				</td>
				</tr>
				<tr>
				  <td width="149" height="0" bgcolor="#FF0000"> <h4 class="style4 style26" ><strong>Name:</strong></h4></td>
				  <td width="335" class="style6 style28" ><div align="center"><strong> <%=s1%></strong></div></td>
				</tr>
				
				<tr>
				  <td height="0" bgcolor="#FF0000"><h4 class="style4 style28" ><strong>Price:</strong></h4></td>
					<td class="style6 style28" ><div align="center"><strong> <%=s4%>/- Rs</strong></div></td>
				    <td width="0"></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style4 style28" ><strong>Manufacturer:</strong></h4></td>
					<td class="style6 style28" ><div align="center"><strong> <%=s5%></strong></div></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style4 style28" ><strong>Model:</strong></h4></td>
					<td class="style6 style28" ><div align="center"><strong> <%=s6%></strong></div></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style4 style28" ><strong>Color:</strong></h4></td>
					<td class="style6 style28" ><div align="center"><strong> <%=s7%></strong></div></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style4 style28" ><strong>Description:</strong></h4></td>
					<td class="style6 style28" ><div align="center"><strong> <%=s8%></strong></div></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style4 style28" ><strong>Rank:</strong></h4></td>
					<td class="style28" >  <p align="center" class="style7"><%=rank%> </p></td>
				</tr>
				<tr>
			      <td height="0" bgcolor="#FF0000"> <h4 class="style4 style28" ><strong>Rating</strong></h4></td>
                    <td>
                      <div align="center"><span class="style7">
                      <%
					 
    if(rank==3)
    {
    	%>
                      <input  name="image" type="image" src="Gallery/1.png" width="30" height="30" >
                      <%
    }
    if(rank>3 && rank<=6)
    {
    	%>
                      <input  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
                      <%
    }
    if(rank>6 && rank<=9)
    {
    	%>
                      <input  name="image" type="image" src="Gallery/3.png" width="100" height="30" >
                      <%
    }
    if(rank>9 && rank<=12)
    {
    	%>
                      <input  name="image" type="image" src="Gallery/4.png" width="120" height="30" >
                      <%
    }
    if(rank>12 && rank<=15)
    {
    	%>
                      <input  name="image" type="image" src="Gallery/5.png" width="140" height="30" >
                      <%
    }
    if(rank>15)
    {
    	%>
                      <input  name="image" type="image" src="Gallery/6.png" width="170" height="30" >
                      <%
    }
    %>
                       </span></div></td></tr>
				
		
            <%		
						
			}
							
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
	 </table>
	 
	 
	 	   <div align="center">
  <table align="left">
    <tr>
      <td class="style2"><a href="U_Make_Review.jsp?id=<%=id%>&name=<%=s1%>"> MAKE REVIEW </a> || </td>
    </tr>
  </table>
  <table align="left">
    <tr>
      <td class="style2"><a href="U_Buy_Products.jsp?name=<%=s1%>&id=<%=id%>&ecom=<%=s88%>"> BUY </a></td>
    </tr>
  </table>
 	      </div>
 	      <h2 align="center" class="style7">&nbsp;</h2>
			<% String type=request.getParameter("type");
			if(type.equalsIgnoreCase("topk")){%>
            <h2 align="right"><a href="U_Search.jsp" class="style4">Back</a></h2>
			<%}else if(type.equalsIgnoreCase("search")){%>
            <h2 align="right"><a href="U_Search.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("comment"))
			{%>
            <h2 align="right"><a href="U_Main.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("allproducts"))
			{%>
            <h2 align="right"><a href="U_AllProducts.jsp" class="style4">Back</a></h2>
			<%}

			%>	
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search Here" type="text" onblur="if(this.value=='') this.value='Search Here'" onfocus="if(this.value =='Search Here' ) this.value=''"/>
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="usermain.jsp">Home</a></li>
            <li><a href="userprofile.jsp">View Profile</a></li>
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