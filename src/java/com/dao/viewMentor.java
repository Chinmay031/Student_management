/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

/**
 *
 * @author MK's PC
 */

import static com.dao.LoginDao1.validate;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


class viewMentor {
    public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
	}catch(Exception e){System.out.println(e);}
	return con;
}
    public  viewMentor(){
	
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from register");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			
			
		}
	}catch(Exception e){System.out.println(e);}
	
}

}
