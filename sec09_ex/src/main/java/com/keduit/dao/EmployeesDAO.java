package com.keduit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.keduit.dto.EmployeesVO;

import util.DBManager;

public class EmployeesDAO {

	private EmployeesDAO() {
		
	}
	
	private static EmployeesDAO instance = new EmployeesDAO();
	
	public static EmployeesDAO getInstance() {
		return instance;
	}
	
	// 리스트 조회
	public List<EmployeesVO> selectAllEmployees(){
		String sql = "select * from employees order by lev desc";
		
		List<EmployeesVO> list = new ArrayList<EmployeesVO>();
		
		EmployeesVO eVO = null;		

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				eVO = new EmployeesVO();
				
				eVO.setId(rs.getString("id"));
//				eVO.setPass(rs.getString("pass"));
				eVO.setName(rs.getString("name"));
				eVO.setLev(rs.getString("lev"));
				eVO.setGender(rs.getString("gender"));
				eVO.setPhone(rs.getString("phone"));
				list.add(eVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	// 리스트 상세 (정보 보기)
	public EmployeesVO selectOneEmployeesById(String id) {
		String sql = "select * from employees where id=?";

		EmployeesVO eVO = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				eVO = new EmployeesVO();
				
				eVO.setId(rs.getString("id"));
				eVO.setPass(rs.getString("pass"));
				eVO.setName(rs.getString("name"));
				eVO.setLev(rs.getString("lev"));
				eVO.setGender(rs.getString("gender"));
				eVO.setPhone(rs.getString("phone"));
				eVO.setEnter(rs.getString("enter"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return eVO;
	}
	
	// 정보 등록
	public void insertEmployees(EmployeesVO eVO) {
		String sql = "insert into employees (id, pass, name, enter, lev, gender, phone)" + "values(?,?,?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, eVO.getId());
			pstmt.setString(2, eVO.getPass());
			pstmt.setString(3, eVO.getName());
			pstmt.setString(4, eVO.getEnter());			
			pstmt.setString(5, eVO.getLev());
			pstmt.setString(6, eVO.getGender());
			pstmt.setString(7, eVO.getPhone());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.getConnection();
		}
	}

	// 정보 수정
	public void updateEmployees(EmployeesVO eVO) {
		String sql = "update employees set pass=?, name=?, enter=?, lev=?, gender=?, phone=? where id=?";
		
		Connection conn = null;
		PreparedStatement pstmt =null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, eVO.getPass());
			pstmt.setString(2, eVO.getName());
			pstmt.setString(3, eVO.getEnter());			
			pstmt.setString(4, eVO.getLev());
			pstmt.setString(5, eVO.getGender());
			pstmt.setString(6, eVO.getPhone());
			pstmt.setString(7, eVO.getId());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	// 정보 삭제
	public void deleteEmployees(String id) {
		String sql = "delete from employees where id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
}
