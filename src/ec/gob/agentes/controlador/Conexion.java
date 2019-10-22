package ec.gob.agentes.controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Conexion {
	
	public static Connection conectar() {
		Connection conexion=null;
		 
	    String mensaje="";
	 
	    /*parametros para la conexion*/
	    String driver = "com.mysql.jdbc.Driver";
	    String url = "jdbc:mysql://localhost:3306/biblioteca?serverTimezone=EST5EDT";
	    String usuario = "root";
	    String clave = "root";
	    /*procedimiento de la conexion*/
	    try{
	       Class.forName(driver);
	        conexion = DriverManager.getConnection(url,usuario,clave);
	        mensaje="conectado";
	        
	       
	    } catch (Exception ex){
	        mensaje=ex.toString();
	    }
	    
	 return conexion;
	}
	
	
	public static String consultarUsuarios() {
		String datos="";
		try {
			Statement st = conectar().createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM users");
			
			while(rs.next()) {
				datos += rs.getInt(1)+".-  "+rs.getString(2)+"<br>";
			}
			
			conectar().close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return datos;
	}
	

	
	public static String consultarPaisCodigo(Integer idP) {
		//Integer idP=Integer.valueOf(idPS);
		String datosPais="";
		try {
			Statement st = conectar().createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM pais WHERE idPais='"+idP+"'");
			
			while(rs.next()) {
				datosPais += rs.getString(2)+"<br>";
			}
			
			conectar().close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return datosPais;
	}
		
		
	
	
// <% out.print(Conexion.consultarPaisCodigo(request.getParameter("idPais"))); %>

}
