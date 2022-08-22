package net.hb.common;

import java.util.Date;
import java.util.ArrayList;
import java.text.SimpleDateFormat;
import java.sql.Connection;
import java.sql.*;

public class Testssi{ //Testssi.java
  ArrayList aList = null;
  SimpleDateFormat sdf = null;
  java.util.Date dt = null;
  
  Connection CN=null ; //DB서버연결,명령어생성참조
  Statement ST=null ; //명령어생성 ST=CN.createStatement();
  PreparedStatement PST=null; //명령어생성 PST=CN.prepareStatement(내용);
  ResultSet RS=null; //조회한결과기억 RS=ST.executeQuery("select~~")

  int Grn, Gcode, Gsabun, Gpay, Ghit ; //정수숫자 자동으로 0으로 초기화
  String  Gname, Gtitle, Gconent, Gwriter, Gemail; //문자열타입
  java.util.Date  Gwdate, hiredate, Gbirth ; //날짜타입
  boolean Ggender, Gflag ;
  int Gtotal=7, total=7, Stotal=0 ; 
  String Gdata, data, Gmsg, Smsg ;
  int Rcnt; //댓글수
  
  public static Connection getConnection() {
	  Connection CN=null;
	  try{
		  Class.forName("oracle.jdbc.driver.OracleDriver");
		  String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
		  CN=DriverManager.getConnection(url, "system", "1234");
		  System.out.println("오라클 db서버 연결 성공 08-22-월요일") ;
		 }catch(Exception ex){ System.out.println("2022-08-22 db에러 " + ex); }
	  return CN;
  }//end
  
}//testssi.java END
