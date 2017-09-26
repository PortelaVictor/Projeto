
package com.javatpoint.bean;

/**
 *
 * @author porte
 */
public class Usuario {
    private int id;
    private String nome, email, login, senha, perfil;
    
    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id = id;
    }
    public String getNome(){
        return nome;
    }
    public void setNome(String nome){
        this.nome = nome;
    }
    
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public String getLogin(){
        return login;
    }
    public void setLogin(String login){
        this.login = login;
    }
    public String getSenha(){
        return senha;
    }
    public void setSenha(String senha){
        this.senha = senha;
    }
    public String getPerfil(){
        return perfil;
    }
    public void setPerfil(String perfil){
        this.perfil = perfil;
    }
    
}
