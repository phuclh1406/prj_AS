/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import sample.utils.DBUtils;

public class UserDAO {

    public static final String LOGIN = "SELECT userID, fullName, roleID, address, birthday, phone, mail, status FROM tblUsers WHERE userID = ? AND password = ? AND status = 1";

    

    public UserDTO checkLogin(String userID, String password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if(conn!= null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, userID);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                if(rs.next()) {
                    String fullName = rs.getString("fullName");
                    String roleID = rs.getString("roleID");
                    String address = rs.getString("address");
                    String birthday = rs.getString("birthday");
                    String phone = rs.getString("phone");
                    String mail = rs.getString("mail");
                    int status = rs.getInt("status");
                    user = new UserDTO(userID, fullName, "", roleID, address, birthday, phone, mail, status);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if(rs!=null) rs.close();
            if(ptm!=null) ptm.close();
            if(conn!=null) conn.close();
        }
        return user;
    }

    
}
