package net.hb.common;

import java.util.ArrayList ;
import java.sql.* ;
import java.util.Date ;

import com.oreilly.servlet.MultipartRequest ;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy ;
import java.io.File ;

public class Global {
	 public Connection CN; //db������������, ��ɾ�����Ҷ� ����
	 public Statement ST; //��ɾ���� ST = CN.createStatement()
	 public PreparedStatement PST; //�ӵ������� PST = CN.prepareStatement("insert~/update~")
	 public ResultSet RS; //select��ȸ�Ѱ�� RS=ST.executeQuery("select~~")
	 
	 public int Gsabun, Gpay, Gcode ;
	 public String Gname, Gtitle, Gemail, Ggender ;
	 public java.util.Date  Gwdate;
	 
	 public int Ghit, Gtotal, Stotal ;
	 public String msg ;  //msg="dml��������� insert~/select~/update~/delete~"
	 public String data ;  //data=request.getParameter("idx");  
	 public String Gimage; //�׸��ʵ� img_file_name
	 public MultipartRequest mr ;
	 public DefaultFileRenamePolicy dr;
	 
}//Global class END


