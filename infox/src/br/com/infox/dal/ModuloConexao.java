package br.com.infox.dal;

import java.sql.*;

public class ModuloConexao {

    //Metodo responsavel por estabelecer a conexao com o banco
    public static Connection conector() {
        java.sql.Connection conexao = null;
        // a linha a baixo "chama" o driver 
        String driver = "com.mysql.jdbc.Driver";
        // Armazenando informações referente ao banco
        String url = "jdbc:mysql://localhost:3306/dbinfox";
        String user = "root";
        String password = "";
        //Estabelecendo conexação e conectando o banco de dados
        try {
            //Executa o arquivo driver
            Class.forName(driver);
            conexao = DriverManager.getConnection(url,user,password);
            return conexao;
            
        } catch (Exception e) {
            //System.out.println(e);
            return null;
        }
        
    }

}
