<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Customer Pisitive Behavior</title>
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
.style4 {font-size: 14px}
.style5 {color: #3366FF}
.style6 {color: #FFFF00}
.style7 {font-size: 14px; color: #FFFF00; }
.style8 {font-weight: bold}
.style9 {font-weight: bold}
.style10 {font-size: 14px; color: #FFFF00; font-weight: bold; }
.style11 {font-weight: bold}
.style12 {color: #FF0000}
.style13 {color: #FFFFFF; }
.style14 {font-size: 18px}
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
       
		<h2 class="style3 style14" >View Customer Negative Log likelihood Behavior !!! <br />
		</h2>
		<p class="style3 style14" >&nbsp;</p>
		<%@ include file="connect.jsp"%>
		  
		  <table width="778" border="1">
				  
				  <tr>
				  <td width="157" height="40" bgcolor="#FF0000" ><div align="left" class="style35 style1 style9 style4 style6 style8">
						<div align="center" class="style7 style10 ">Product Name </div>
					</div></td>
					<td width="160" bgcolor="#FF0000" ><div align="left" class="style35 style1 style4 style6 style9">
						<div align="center" class="style7 style10 ">Reviewed User </div>
					</div></td>
					<td width="237" bgcolor="#FF0000" ><div align="left" class="style4 style36 style1 style2 style11">
					<div align="center" class="style10">Product Review					</div></td>
					<td width="196" bgcolor="#FF0000"><div align="left" class="style37 style1 style12 style4 style6 style11">
						<div align="center" class="style13">Reviewed Date</div>
					</div></td>
				  </tr>
		  
<%
		String admin1=(String)application.getAttribute("admin");   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="Negative",s22="" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0;
	String ftype="Negative";
	
	try
	{
			String sql3="select p_name,p_ecommerce from products";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   int count=0;
			%>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {font-weight: bold}
.style5 {color: #FF0000}
.style6 {color: #FF0000; font-weight: bold; }
-->
</style>

	
				 
				  <%

				  String query="select * from pcomment where pname='"+s1+"'  and p_commerce='"+admin1+"'"; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);
					s2=rs.getString(2); //pname
					s22=rs.getString(3).toLowerCase(); //comment
					s3=rs.getString(4);  // comment user 
					s5=rs.getString(5);  // Date
					s6=rs.getString(7);  // ECom
					
					count++;

			   
			       String sql1="select * from filter where tctype='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s22.contains(t2)))
									{ 
	
			                 count1++;
									 %>
							  <tr>
							  <td width="157" height="40" bgcolor="#FFFF00"  style="color:#000000;"><div align="center" class="style32 style5 style13"><strong><%=s2%></strong></div></td>
								<td width="160" height="40" bgcolor="#FF0000"  style="color:#000000;"><div align="center" class="style32 style1 style13 style12"><strong> <%=s3%></strong></div></td>
								<td width="237" height="40" bgcolor="#FFFF00"  style="color:#000000;"><div align="center" class="style32 style5 style13"><strong><%=s22%></strong></div></td>
								<td width="196" height="40" bgcolor="#FFFF00"  style="color:#000000;"><div align="center" class="style32 style5 style13"><strong><%=s5%></strong></div></td>
		  </tr>
							  				
		    <%   					}

					      }
			      }
			        
				}
				
			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>

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