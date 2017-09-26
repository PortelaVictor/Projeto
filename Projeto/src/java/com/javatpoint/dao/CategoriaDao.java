package com.javatpoint.dao;

/**
 *
 * @author porte
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.javatpoint.bean.Categoria;
public class CategoriaDao {
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/producao","root","");
        }catch(Exception e){System.out.println(e);}
        return con;
    }
    public static int save(Categoria c){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement(
            "insert into categoria(nome,descricao) values (?,?)");
            ps.setString(1,c.getNome());
            ps.setString(2,c.getDescricao());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }
    public static int update(Categoria c){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement(
            "update categoria set nome=?,descricao=? where id=?");
            ps.setString(1,c.getNome());
            ps.setString(2,c.getDescricao());
            ps.setInt(3,c.getId());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }
    public static int delete(Categoria c){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("delete from categoria where id=?");
            ps.setInt(1,c.getId());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }
    public static List<Categoria> getAllRecords(){
        List<Categoria> list=new ArrayList<Categoria>();
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from categoria");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Categoria c=new Categoria();
                c.setId(rs.getInt("id"));
                c.setNome(rs.getString("nome"));
                c.setDescricao(rs.getString("decricao"));
                list.add(c);
            }
        }catch(Exception e){System.out.println(e);}
        return list;
     }
    public static Categoria getRecordById(int id){
        Categoria c=null;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from categoria where id=?");
            ps.setInt(1, id);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                c=new Categoria();
                c.setId(rs.getInt("id"));
                c.setNome(rs.getString("nome"));
                c.setDescricao(rs.getString("descricao"));
            }
        }catch(Exception e){System.out.println(e);}
        return c;
    }
}
