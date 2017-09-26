package com.javatpoint.dao;

/**
 *
 * @author porte
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.Usuario;

public class UsuarioDao {
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/producao","root","");
        }catch(Exception e){System.out.println(e);}
        return con;
    }
    public static int save(Usuario u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement(
            "insert into usuario(nome,email,login,senha,perfil) values (?,?,?,md5(?),?)");
            ps.setString(1,u.getNome());
            ps.setString(2,u.getEmail());
            ps.setString(3,u.getLogin());
            ps.setString(4,u.getSenha());
            ps.setString(5,u.getPerfil());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }
    public static int update(Usuario u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement(
            "update usuario set nome=?,email=?,login=?,senha=md5(?),perfil=? where id=?");
            ps.setString(1,u.getNome());
            ps.setString(2,u.getEmail());
            ps.setString(3,u.getLogin());
            ps.setString(4,u.getSenha());
            ps.setString(5,u.getPerfil());
            ps.setInt(6,u.getId());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }
    public static int delete(Usuario u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("delete from usuario where id=?");
            ps.setInt(1,u.getId());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }
    public static List<Usuario> getAllRecords(){
        List<Usuario> list=new ArrayList<Usuario>();
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from usuario");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Usuario u=new Usuario();
                u.setId(rs.getInt("id"));
                u.setNome(rs.getString("nome"));
                u.setEmail(rs.getString("email"));
                u.setLogin(rs.getString("login"));
                u.setSenha(rs.getString("senha"));
                u.setPerfil(rs.getString("perfil"));
                list.add(u);
            }
        }catch(Exception e){System.out.println(e);}
        return list;
     }
    public static Usuario getRecordById(int id){
        Usuario u=null;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from usuario where id=?");
            ps.setInt(1, id);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                u=new Usuario();
                u.setId(rs.getInt("id"));
                u.setNome(rs.getString("nome"));
                u.setEmail(rs.getString("email"));
                u.setLogin(rs.getString("login"));
                u.setSenha(rs.getString("senha"));
                u.setPerfil(rs.getString("perfil"));
            }
        }catch(Exception e){System.out.println(e);}
        return u;
    }
}
