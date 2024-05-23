package com.funfit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.funfit.bean.Participant;
import com.funfit.resource.DBResource;

public class ParticipantsDAO {
	public int addParticipant(Participant participant) {
		try {
			Connection con = DBResource.getDbConnection();
			PreparedStatement pstmt = con.prepareStatement("insert into participants(fname,age,phonenumber,bid) values(?,?,?,?)");
			pstmt.setString(1,participant.getFname());
			pstmt.setInt(2,participant.getAge());
			pstmt.setString(3,participant.getPhonenumber());
			pstmt.setInt(4,participant.getBid());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			System.err.println(e);
			return 0;
		}
	}
	public List<Participant> viewAllParticipants(){
		List<Participant> listOfPart = new ArrayList<>();
		try {
			Connection con = DBResource.getDbConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from participants");
			ResultSet results = pstmt.executeQuery();
			while(results.next()) {
				Participant p = new Participant();
				p.setPid(results.getInt(1));
				p.setFname(results.getString(2));
				p.setAge(results.getInt(3));
				p.setPhonenumber(results.getString(4));
				p.setBid(results.getInt(5));
				listOfPart.add(p);
				
			}
			return listOfPart;
		} catch (Exception e) {
			System.err.println(e);
			
		} return listOfPart;
	}
	
}
