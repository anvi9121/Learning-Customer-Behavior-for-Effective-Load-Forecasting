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
       
		<h2 ><em>Add Products !!! </em></h2>
          <p class="infopost">&nbsp;</p>
          <%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
				
<% 

String ename=(String)application.getAttribute("admin");

   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String dt = strDate + "   " + strTime;
			


%>


<form name="s" method="post" enctype="multipart/form-data" action="A_Add_Products1.jsp" onSubmit="return valid()"  ons target="_top">
 
  <table width="443" border="0" align="center">
	 
    <tr>
      <td width="165" height="36" bgcolor="#FF0000"><div align="center" class="style3 style8"><strong><em> Product Name </em> </strong></div></td>
      <td width="268"><label>
        <input type="text" id="t1" name="name">
      </label></td>
    </tr>
	
	 <tr>
      <td height="35" bgcolor="#FF0000"><div align="center" class="style3 style8"><strong><em>Price </em></strong></div></td>
      <td><label>
        <input type="text" id="t3" name="price">
      </label></td>
    </tr>
    <tr>
      <td height="51" bgcolor="#FF0000"><div align="center" class="style3 style8"><strong><em> Manufacturer </em></strong></div></td>
      <td><label>
        <input type="text" id="t3" name="manu">
      </label></td>
    </tr>
   <tr>
      <td height="51" bgcolor="#FF0000"><div align="center" class="style3 style8"><strong><em> Model </em></strong></div></td>
      <td><label>
        <input type="text" id="t3" name="model">
      </label></td>
    </tr>
	<tr>
      <td height="51" bgcolor="#FF0000"><div align="center" class="style3 style8"><strong><em> Color </em></strong></div></td>
      <td><label>
        <input type="text" id="t3" name="color">
      </label></td>
    </tr>
	<tr>
      <td height="51" bgcolor="#FF0000"><div align="center" class="style3 style8"><strong><em> Description </em></strong></div></td>
      <td><label>
        <textarea name="desc" id="t2"></textarea>
      </label></td>
    </tr>
    <tr>
      <td height="38" bgcolor="#FF0000"><div align="center" class="style3 style8"><strong><em>  Image </em></strong></div></td>
      <td><input type="file" id="userImage" name="image" style="width:100%"  ></td>
    </tr>
    <tr>
      <td bgcolor="#FF0000"> <div align="center" class="style3 style9"><strong>Ecommerce Seller </strong></div></td>
      <td><input type="text" value="<%=ename%>" readonly name="eweb" /></td>
    </tr>
    <tr>
      <td height="26" bgcolor="#FF0000">
        <div align="center" class="style3 style9"><strong>Uploaded Date </strong></div></td>
      <td><input type="text"  value="<%=dt%>" readonly name="dt"/>
        <span class="style5">(DD/MM/YYYY)</span></td>
    </tr>
    <tr>
      <td height="26">&nbsp;</td>
      <td><input type="submit" name="Submit" value="Add Post" /></td>
    </tr>
  </table>
</form>
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