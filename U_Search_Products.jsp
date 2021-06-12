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
.style4 {color: #FF0000}
.style6 {color: #FF0000; font-weight: bold; }
.style7 {font-weight: bold}
.style8 {
	font-size: 12px;
	color: #FF0000;
	font-weight: bold;
}
.style9 {color: #FFFFFF}
.style10 {font-weight: bold}
.style11 {color: #FFFFFF; font-weight: bold; }
.style12 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
	  
        <ul>
          <li><a href="usermain.jsp"><span>Home Page</span></a></li>
          
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
       
		<h2 class="style3" >Search Products !!! </h2>
          <p class="infopost">&nbsp;</p>
          <p class="infopost">&nbsp;</p>
         <form name="s" action="U_Search_Products.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="174" bgcolor="#FF0000"><div align="center" class="header style9 style10">
                        <div align="right" class="style12">
                          <div align="center">Enter  Keyword</div>
                        </div>
                      </div></TD>
                      <TD width="152" bgcolor="#FF0000">
                      <div align="left" class="style11"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="155" bgcolor="#FF0000"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2"><div align="center" class="style13 style8">( searching content Based on Post Description)</div></div></TD>
                    </TR>
                  </TABLE>
               </DIV>
                <P>&nbsp; </P>
          </FORM>
			
                <p>
				
				<%
	  
	  try
							{
							String user=(String)application.getAttribute("user");
								String s10="",keyword="",s20="",s30="",s50="",s60="";
								String strDate="",strTime="",dt="";
								int rank=0,i=0;
								double found=0,total=0,ratio=0;
								
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
				
								String sql8="select * from products ";
								Statement st8=connection.createStatement();
								ResultSet rs8=st8.executeQuery(sql8);
								while(rs8.next())
										{
									i=rs8.getInt(1);
								    s10 = rs8.getString(2);
									s20 = rs8.getString(9);
									s30 = rs8.getString(7);    
									int s40 = rs8.getInt(10);
								      total++;
									   String des=s30.toLowerCase();
					
										if ((des.contains(keyword)))
										{
										 found++ ;
								String sql12="select * from search_history where result='"+s10+"' and keyword='"+keyword+"' and user='"+user+"' ";
								Statement st12=connection.createStatement();
								ResultSet rs12=st12.executeQuery(sql12);
								if(rs12.next())
										{
								connection.createStatement().executeUpdate("update search_history set rank=rank+1 where result='"+s10+"'   ");
										}  
										else
										{
									   int s_rank=0;
									   String sql6="insert into search_history(user,keyword,type,result,dt,p_id,rank) values('"+user+"','"+keyword+"','"+s20+"','"+s10+"','"+dt+"','"+i+"','"+s_rank+"')";
						Statement st6=connection.createStatement();
						st6.executeUpdate(sql6);
									   
									  }
										
									%>
                </P>
 </p>
              <td width="86">
			<div align="center" class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="pimages.jsp?id=<%=i%>&value=<%="oimage"%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
               <p> <div align="center" class="style4"><strong>Product Name : <span class="style15"> <%=s10%></span></strong></div></p>
                <p class="style6"><div align="center" class="style4"><strong>Product Rank :  <span class="style15"> <%=s40%></span></strong></div></p>
                <p class="style6"><div align="center" class="style14"><strong><span class="style4"><strong>View <a href="U_Search_Details.jsp?id=<%=i%>&name=<%=s10%>&type=<%="search"%>">Details</a></strong></span></strong></div>
                </p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	}
							
						 }
						 ratio=(found*100)/total;
					
					String sql12="select * from searchratio where keyword='"+keyword+"' ";
								Statement st12=connection.createStatement();
								ResultSet rs12=st12.executeQuery(sql12);
								if(rs12.next())
										{
										String strQuery2 = "update searchratio set ratio='"+ratio+"' where keyword='"+keyword+"' ";
								connection.createStatement().executeUpdate(strQuery2);
					}
					else{
  String sql1="insert into searchratio(keyword,found,total,ratio,dt)values('"+keyword+"','"+(int)found+"','"+(int)total+"','"+ratio+"','"+dt+"')";
				Statement st1=connection.createStatement();
			st1.executeUpdate(sql1);	
					}
			%>	
			
			<h2 align="right"><span class="style4">search ratio=<%=(int)found%>:<%=(int)total%></span></h2>
			<%
						
					}
					
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
					%>	 
          <p class="infopost">&nbsp;</p>
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