package com.funfit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.funfit.bean.Batch;

import com.funfit.resource.DBResource;

public class BatchDao {
	public int addBatch(Batch batch) {
		try {
			Connection con = DBResource.getDbConnection();
			PreparedStatement pstmt = con.prepareStatement("insert into batch(typeofbatch,time) values(?,?)");
			pstmt.setString(1,batch.getTypeofbatch());
			pstmt.setString(2, batch.getTime());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			System.err.println(e);
			return 0;
		}
	}
	public List<Batch> viewAllBatch(){
		List<Batch> listOfBatch = new ArrayList<>();
		try {
			Connection con = DBResource.getDbConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from batch");
			ResultSet results = pstmt.executeQuery();
			while(results.next()) {
				Batch b = new Batch();
				b.setBid(results.getInt(1));
				b.setTypeofbatch(results.getString(2));
				b.setTime(results.getString(3));
				listOfBatch.add(b);
				
			}
			return listOfBatch;
		} catch (Exception e) {
			System.err.println(e);
			
		} return listOfBatch;
	}
	

}
