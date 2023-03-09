package com.abcjobs_023.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.abcjobs_023.repository.EducationsRepository;
import com.abcjobs_023.model.Educations;
import com.abcjobs_023.model.Experiences;

@Service
@Transactional
public class EducationsService {
	@Autowired
	EducationsRepository repo;

	public Educations addEducations(Educations ed) {
		return repo.save(ed);
	}

	public List<Educations> getEducationsByUserDetailsId(String udID) {
		return repo.getEducationsByUserDetailsId(udID);
	}

	public Educations updateEducations(Long exId, String intitutionName, String startDate, String endDate,
			String educationName) {
		Educations educations = repo.findById(exId).get();

		// // update
		// educations.setUserDetailsId(udID);
		educations.setIntitutionName(intitutionName);
		educations.setStartDate(startDate);
		educations.setEndDate(endDate);
		educations.setEducationName(educationName);
		//
		// // save
		repo.save(educations);
		return null;
	}

	public boolean deleteEducationById(Long id) {
		try {
			repo.deleteById(id);
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
}
