package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import vo.BbsDto;

public class BbsDao {
    private static BbsDao bbsDao = new BbsDao();
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;
    private int result = 0;

    public static BbsDao getInstance() {
        return bbsDao;
    }
    public Connection getConnect() {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/barca?characterEncoding=UTF-8","root","1234");
        }catch(Exception e) {
            System.out.println("MDAO:connect" +e);
        }
        return con;
    }
    public void close(Connection con, PreparedStatement pstmt) {
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (Exception e) {
                System.out.println("pstmt close error" + e);
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (Exception e) {
                System.out.println("Conn close error" + e);
            }
        }
    }
    public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
        if(rs != null)
        {
            try {
                rs.close();
            } catch (Exception e) {
                System.out.println("rs close error" +e);
            }
            close(con,pstmt);
        }
    }
    public int nextval() {
        con = getConnect();
        StringBuffer query = new StringBuffer();
        query.append("SELECT MAX(bbsId) ").append("FROM bbs");

        try {
            pstmt = con.prepareStatement(query.toString());
            rs = pstmt.executeQuery();
            while (rs.next()) {
                result = rs.getInt("MAX(bbsId)");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(con, pstmt, rs);
        }
        return result;
    }
    public int write(BbsDto bbsDto) {
        con = getConnect();
        StringBuffer query = new StringBuffer();
        query.append("INSERT INTO bbs ");
        query.append("(bbsId, Title, Content, Date, Hit, Category, id) ");
        query.append("VALUES (?, ?, ?, sysdate, 0, ?, ?)");
        try {
            pstmt = con.prepareStatement(query.toString());
            pstmt.setInt(1, bbsDto.getBbsId());
            pstmt.setString(2, bbsDto.getTitle());
            pstmt.setString(3, bbsDto.getContent());
            pstmt.setString(4, bbsDto.getCategory());
            pstmt.setString(5, bbsDto.getId());
            result = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(con, pstmt, null);
        }
        return result;
    }
    public List<BbsDto> selectList(){
        List<BbsDto> list = new ArrayList<>();
        try {
            con = getConnect();
            String sql ="SELECT * FROM bbs ORDER BY bbsId DESC";
            pstmt = con.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                BbsDto bbsDto = new BbsDto();
                bbsDto.setBbsId(rs.getInt("bbsId"));
                bbsDto.setTitle(rs.getString("bbsTitle"));
                bbsDto.setContent(rs.getString("bbsContent"));
                bbsDto.setDate(rs.getTimestamp("bbsDate"));
                bbsDto.setHit(rs.getInt("bbsHit"));
                bbsDto.setCategory(rs.getString("bbsCategory"));
                bbsDto.setId(rs.getString("id"));
                list.add(bbsDto);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close(con, pstmt, rs);
        }
        return list;
    }
    public int hitUpdate(String bbsId) {
        con = getConnect();
        String sql = "UPDATE bbs SET bbsHit = bbsHit + 1 WHERE bbsId = ?";

        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, bbsId);
            result = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(con, pstmt, null);
        }
        return result;
    }
    public BbsDto selectById(String bbsId) {
        BbsDto bbsDto = new BbsDto();
        con = getConnect();
        String sql = "SELECT * FROM bbs WHERE bbsId = ?";

        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, bbsId);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                bbsDto.setBbsId(rs.getInt("bbsid"));
                bbsDto.setTitle(rs.getString("bbstitle"));
                bbsDto.setContent(rs.getString("bbscontent"));
                bbsDto.setDate(rs.getTimestamp("bbsdate"));
                bbsDto.setHit(rs.getInt("bbshit"));
                bbsDto.setCategory(rs.getString("bbscategory"));
                bbsDto.setId(rs.getString("id"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(con, pstmt, rs);
        }
        return bbsDto;
    }
    public int del(int bbsId) {
        con = getConnect();
        String sql = "DELETE FROM bbs1 WHERE bbsId = ?";

        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, bbsId);
            result = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(con, pstmt, null);
        }
        return result;
    }
    public int update(BbsDto bbsDto) {
        con = getConnect();
        StringBuffer query = new StringBuffer();
        query.append("UPDATE bbs1 SET bbsTitle = ?, ");
        query.append("bbsContent = ?, ");
        query.append("bbsCategory = ? ");
        query.append("WHERE bbsId = ?");

        try {
            pstmt = con.prepareStatement(query.toString());
            pstmt.setString(1, bbsDto.getTitle());
            pstmt.setString(2, bbsDto.getContent());
            pstmt.setString(3, bbsDto.getCategory());
            pstmt.setInt(4, bbsDto.getBbsId());
            result = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close(con, pstmt, null);
        }
        return result;
    }
}