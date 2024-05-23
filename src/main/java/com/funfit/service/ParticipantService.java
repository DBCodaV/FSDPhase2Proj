package com.funfit.service;

import java.util.List;


import com.funfit.bean.Participant;
import com.funfit.dao.ParticipantsDAO;

public class ParticipantService {
	ParticipantsDAO pd = new ParticipantsDAO();
	public String addParticipant(Participant p) {
		if(pd.addParticipant(p)>0) {
			return "Participant Details added";
		} else {
			return "Participant details not added";
		}
	}
	public List<Participant> viewAllParticipants(){
		return pd.viewAllParticipants();
	}
}
