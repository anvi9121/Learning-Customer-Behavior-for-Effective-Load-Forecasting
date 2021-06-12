<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Buy Product</title>
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
       
		<h2 class="style3" >Buy Product !!! </h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
		 
		 
          <p>
            <%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
            
            <%

			   
    try
	{
			int amount1 =0,amount2 =0,pprice=0,uamount=0,sub=0,sum=0;
			int accno=0;
  			String s1,s2,s3,s4;
			
			
			String user=(String)application.getAttribute("user");
			
			String mname=request.getParameter("name");
			int id=Integer.parseInt(request.getParameter("id"));
			String ecom=request.getParameter("ecom");
			
			 SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
				SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
				Date now = new Date();
		
				String strDate = sdfDate.format(now);
				String strTime = sdfTime.format(now);
				String dt = strDate + "   " + strTime;



   
			
			String sql3="SELECT acc_no FROM account where user='"+user+"' ";
			Statement stmt3 = connection.createStatement();
			ResultSet rs3 =stmt3.executeQuery(sql3);
			if(rs3.next()==true)
			{
								accno=rs3.getInt(1);	
			}
			
			String sql="SELECT * FROM account where user='"+user+"' and acc_no='"+accno+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
								uamount=Integer.parseInt(rs.getString(8));				
																
								String sql1="SELECT * FROM products where p_name='"+mname+"' and id='"+id+"' ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								
								if(rs1.next()==true)
								{
										int id1=rs1.getInt(1);
										int rank1=rs1.getInt(10);
										pprice=Integer.parseInt(rs1.getString(3));
										if(pprice>uamount)
										{
											out.println("Insufficiant Amount"); 
											
											out.println(  "still need ");
											out.println(pprice-uamount+"want to add ");
											
											%>
            <a href="U_Add_Account.jsp?type=<%="osearch"%>">ADD AMOUNT</a>
            <%
										}
										else
										{
												sub=uamount-pprice;
												String leftamount=String.valueOf(sub);
												String sql2="Update account set amount='"+leftamount+"'  where user='"+user+"' ";
												Statement stmt2 = connection.createStatement();
												stmt2.executeUpdate(sql2);
												//ResultSet rs2=
												//if(rs2.next()==true)
												//{
													String type="other";
													//String category=(String)application.getAttribute("category");
													PreparedStatement ps1=connection.prepareStatement("insert into buy(mname,user,date,price,p_id,type,ecom) values(?,?,?,?,?,?,?)");
														ps1.setString(1,mname);
														ps1.setString(2,user);
														ps1.setString(3,dt);
														ps1.setInt(4,pprice);	
														ps1.setInt(5,id);
														ps1.setString(6,type);
														ps1.setString(7,ecom);
														
														ps1.executeUpdate();
													
													int rank=rank1+1;
														
												String sql30="Update products set rank="+rank+"  where id='"+id1+"' ";
												Statement stmt20 = connection.createStatement();
												stmt20.executeUpdate(sql30);
			                                       
													 
												out.println("PRODUCTS PURCHASED SUCCESSFYLLY");
													
																
											}
								
						
									}
					
					}
					
					else
					{
						out.print("Account Not Found");
						
					}
									
					
		connection.close();
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
          </p>
          <p>&nbsp;</p>
          <p><a href="usermain.jsp">Back</a>  </p>
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