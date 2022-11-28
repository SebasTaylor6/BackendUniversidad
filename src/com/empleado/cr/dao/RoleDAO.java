package com.empleado.cr.dao;

import com.empleado.cr.entity.Role;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class RoleDAO
{
    private static final String INSERT_ROLE = "{call prc_ins_role(?,?)}";
    private static final String MODIFICAR_ROLE = "{call prc_mod_role(?,?)}";
    private static final String BUSCAR_ROLE = "{?=call BUSCAR_ROLE(?)}";
    private static final String LISTAR_ROLE = "{?=call LISTAR_ROLE()}";
    private static final String ELIMINAR_ROLE = "{call ELIMINAR_ROLE(?)}";
    private String message = "";


    public String addRole(Connection connection, Role role){
        CallableStatement cstmt = null;
        try{
            cstmt = connection.prepareCall(INSERT_ROLE);
            cstmt.setInt(1,role.getIdRole());
            cstmt.setString(2,role.getRoleName());
            cstmt.execute();
            cstmt.close();
            message = "Data Stored correctly";
        }catch (SQLException e){
            message = "Data Stored failed: "+ e.getMessage();
        }
        return message;
    }

    public String modifyRole(Connection connection, Role role){
        CallableStatement cstmt = null;
        try{
            cstmt = connection.prepareCall(MODIFICAR_ALUMNO_ROLE);
            cstmt.setInt(1,role.getIdRole());
            cstmt.setString(2,role.getRoleName());
            cstmt.execute();
            cstmt.close();
            message = "Data Stored correctly";
        }catch (SQLException e){
            message = "Data Stored failed: "+ e.getMessage();
        }
        return message;
    }

    public String deleteRole(Connection connection, int id){
        return message;
    }

    public String searchRole(Connection connection, int id){

    }

    public void showRole(){

    }
}
