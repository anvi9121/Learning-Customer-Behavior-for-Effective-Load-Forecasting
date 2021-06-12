<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Seller main page</title>
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
.style3 {color: #FFFFFF}
.style4 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
	   <%String admin=(String)application.getAttribute("admin");%>
        <ul>
          <li><a href="adminmain.jsp"><span>Home Page</span></a></li>
          <li  class="active"><a href="#"><span><%=admin%></span></a></li>
          <li><a href="adminlogin.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style1 style2">Learning Customer Behaviors for Effective Load Forecasting</h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
       
		<h2 ><em>Product's More Details </em></h2>
          <p class="infopost">&nbsp;</p>
          <table width="591" >
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
		String name=request.getParameter("name");
	int id=Integer.parseInt(request.getParameter("id")); 
		
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s88,s99;
						int i=0;
						try 
						{	
						    						
							ArrayList al=new ArrayList();
						//	String id = request.getParameter("id");
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
								s88=rs.getString(9);
								int rank=rs.getInt(10);
								 s9=rs.getString(11);
								
								
					%>
					<tr>
					<td colspan="3">
					
				<img src="pimages.jsp?id=<%=i%>&value=<%="oimage"%>" width="130" height="100" align="middle" />				</td>
				</tr>
				<tr>
				  <td width="281" height="0" bgcolor="#FF0000"> <h4 class="style3 style26" ><strong>Name:</strong></h4></td>
				  <td width="260" bgcolor="#F0F0F0" class="style28" > <div align="center" class="style4"><%=s1%></div></td>
				</tr>
				
				
				<tr>
				  <td height="0" bgcolor="#FF0000"><h4 class="style3 style28" ><strong>Price:</strong></h4></td>
					<td bgcolor="#F0F0F0" class="style28" > <div align="center" class="style4"><%=s4%>/- Rs </div></td>
				    <td width="34"></td>
				</tr>
				
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style3 style28" ><strong>Manufacturer:</strong></h4></td>
					<td bgcolor="#F0F0F0" class="style28" > <div align="center" class="style4"><%=s5%></div></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style3 style28" ><strong>Model:</strong></h4></td>
					<td bgcolor="#F0F0F0" class="style28" > <div align="center" class="style4"><%=s6%></div></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style3 style28" ><strong>Color:</strong></h4></td>
					<td bgcolor="#F0F0F0" class="style28" > <div align="center" class="style4"><%=s7%></div></td>
				</tr>
				
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style3 style28" ><strong>Product Descrition:</strong></h4></td>
					<td bgcolor="#F0F0F0" class="style28" > <div align="center" class="style4"><%=s8%></div></td>
				</tr>
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style3 style28" ><strong>ECommerce Website:</strong></h4></td>
					<td bgcolor="#F0F0F0" class="style28" >  <p align="center" class="style4"><%=s88%> </p></td>
				</tr>
				
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style3 style28" ><strong>Rank:</strong></h4></td>
					<td bgcolor="#F0F0F0" class="style28" >  <p align="center" class="style4"><%=rank%> </p></td>
				</tr>
				
				<tr>
				  <td height="0" bgcolor="#FF0000"> <h4 class="style3 style28" ><strong>Published Date:</strong></h4></td>
					<td bgcolor="#F0F0F0" class="style28" >  <p align="center" class="style4"><%=s9%> </p></td>
				</tr>
				
					<tr>
				    <td height="0" bgcolor="#FF0000"> <h4 class="style3 style28" ><strong>Rating</strong></h4></td>
                    <td bgcolor="#F0F0F0">
                      <div align="center" class="style4">
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
            </div></td></tr>
				
		
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
          <p><a href="A_View_All_Products.jsp">Back</a></p>
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
          <h2 class="star"><span>Seller</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp">Home</a></li>
            <li><a href="allusers.jsp">All User</a></li>
            <li><a href="adminlogin.jsp">Logout</a></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <div class="clr"></div>
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