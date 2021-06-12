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
.style4 {
	color: #FF0000;
	font-style: italic;
	font-weight: bold;
}
.style5 {color: #FFFF00}
.style6 {color: #FF0000}
.style7 {font-weight: bold}
.style8 {font-weight: bold}
.style10 {font-weight: bold}
.style12 {font-weight: bold}
.style14 {font-weight: bold}
.style15 {font-weight: bold}
.style16 {font-weight: bold}
.style18 {font-weight: bold}
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
       
		<h2 class="style4" >View All Products Searched Behavior!!! </h2>
          <p class="infopost">&nbsp;</p>
           <table width="601" border="0" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr bgcolor="#99FF99">
              <td  width="47" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style6 style7 style21 style15 style5"><strong> SI NO </strong></div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style7 style21 style15 style5"><strong>Username</strong></div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style21 style15 style5"><strong>Keyword</strong></div></td>
			  <td  width="114" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style21 style15 style5"><strong>Ecommerce Website </strong></div></td>
			  <td  width="112" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style21 style15 style5"><strong>Product Name </strong></div></td>
              <td  width="82" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style21 style15 style5"><strong> Date and Time </strong></div></td>
			  <td  width="82" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style4 style21 style15 style5"><strong> Keyword Rank</strong></div></td>
          </tr>
            <%@ include file="connect.jsp" %>
            <%
					     
						
						String s1="",s2="",s3="",s4="",s5="",s6="",s7="";
						int i=1;
						try 
						{
						   	String query="select * from search_history "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
							    int p_id=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getString(8);
							
						
					%>
            <tr>
              <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style6 style22">&nbsp;</p>
                  <div align="center" class="style22 style6 style8">
                   
                      <%out.println(i);%>
                    
                    <p>&nbsp; </p>
                  </div></td>
			 <td width="116" rowspan="1" bgcolor="#FFFFFF" ><div class="style6 style22" style="margin:10px 13px 10px 13px;" ><strong>  
			   <%out.println(s1);%> 
		      </strong></div></td>
			  
			  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style6 style22">&nbsp;</p>
                  <div align="center" class="style22 style6 style10">
                    <%out.println(s2);%>
					<p>&nbsp; </p>
                </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style6 style22">&nbsp;</p>
                  <div align="center" class="style22 style6 style12">
                  
                      <%out.println(s3);%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style6 style22">&nbsp;</p>
                  <div align="center" class="style22 style6 style14">
                  
                     <%out.println(s4);%>
                   
                    <p>&nbsp; </p>
                  </div></td>
				  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style6 style22">&nbsp;</p>
                  <div align="center" class="style22 style6 style16">
                    
                      <%out.println(s5);%>
                  
                    <p>&nbsp; </p>
                  </div></td>
				  
				  <td height="0"  valign="baseline" bgcolor="#FFFFFF"><p class="style6 style22">&nbsp;</p>
                  <div align="center" class="style22 style6 style18">
                    
                      <%out.println(s7);%>
                  
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
          <p><a href="adminmain.jsp">Back</a></p>
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