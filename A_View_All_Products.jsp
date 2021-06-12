<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Products</title>
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
.style4 {
	font-weight: bold;
	color: #FF0000;
}
.style5 {font-weight: bold}
.style6 {font-weight: bold}
.style7 {font-weight: bold}
.style9 {
	color: #FF0000;
	font-style: italic;
	font-weight: bold;
}
.style10 {color: #FF0000}
.style12 {font-weight: bold}
.style14 {font-weight: bold}
.style15 {font-weight: bold}
.style16 {font-weight: bold}
.style18 {font-weight: bold}
.style20 {font-weight: bold}
.style21 {font-weight: bold}
.style22 {font-weight: bold}
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
       
		<h2 class="style9" >View All Products !!! </h2>
          <p class="infopost">&nbsp;</p>
         <table width="663" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr bgcolor="#99FF99">
              <td  width="31" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style5 style6 style7 style21 style15"><strong> SI NO </strong></div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style6 style7 style21 style15"><strong>Product Image</strong></div></td>
              <td  width="106" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style7 style21 style15"><strong>Product Name</strong></div></td>
			  <td  width="65" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style21 style15"><strong>Price</strong></div></td>
			  <td  width="107" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style21 style15"><strong>Manufacturer</strong></div></td>
              <td  width="44" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style21 style15"><strong>Rank</strong></div></td>
			  <td  width="82" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style21 style15"><strong>Uploaded Date</strong></div></td>
		      <td  width="94" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style21 style15"><strong>Reviews</strong></div></td>
          </tr>
            <%@ include file="connect.jsp" %>
            <%
					  String eweb=(String )application.getAttribute("admin");
						String s1,s2,s3,s4,s5,s6;
						int i=1;
						try 
						{
						   	String query="select * from products where p_ecommerce='"+eweb+"' order by rank desc"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(10);
								s5=rs.getString(11);
							
							
							
						
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style22 style10">&nbsp;</p>
                  <div align="center" class="style22 style10 style12">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
                  </div></td>
				  
              <td width="116" rowspan="1" ><div class="style22 style10" style="margin:10px 13px 10px 13px;" ><strong> <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="pimages.jsp?id=<%=i%>&value=<%="oimage"%>" style="width:90px; height:90px;"  />
              </a> </strong></div></td>
			  <td  valign="baseline" height="0"><p class="style22 style10">&nbsp;</p>
                  <div align="center" class="style22 style10 style14">
                   
                      <a href="A_View_More.jsp?name=<%=s1%>&id=<%=i%>">
                      <%out.println(s1);%>
                      </a>
                      <p>&nbsp; </p>
                </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style10">&nbsp;</p>
                  <div align="center" class="style22 style10 style16">
                  
                      <%out.println(s2);%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td  valign="baseline" height="0"><p class="style22 style10">&nbsp;</p>
                  <div align="center" class="style22 style10 style18">
                    
                      <%out.println(s3+"/- Rs");%>
                  
                    <p>&nbsp; </p>
                  </div></td>
				  
				   <td  valign="baseline" height="0"><p class="style22 style10">&nbsp;</p>
                  <div align="center" class="style22 style10 style20">
                    
                    <%out.println(s4);%>
                    
                      <p>&nbsp; </p>
                  </div></td>
				  
				  <td  valign="baseline" height="0"><p class="style10">&nbsp;</p>
                  <div align="center" class="style10 style22">
                    
                    <%out.println(s5);%>
                    
                      <p>&nbsp; </p>
                  </div></td>
				  
				  
				  <td  valign="baseline" height="0"><p class="style4">&nbsp;</p>
                  <div align="center" class="style22 style4 style5">
                    
                      <a href="A_Products_Reviews.jsp?name=<%=s1%>">View Reviews</a>                      
                      <p>&nbsp; </p>
                  </div></td>
            </tr>
            <%
					i=i+1;
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <tr>
              
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
			  <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
        </table>
          <p>&nbsp;</p>
          <p align="justify"><a href="adminmain.jsp">Back</a></p>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Seller</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp">Home</a></li>
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