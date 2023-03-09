package com.abcjobs_023.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobs_023.model.Experiences;
import com.abcjobs_023.repository.ExperiencesRepository;

@Service
@Transactional
public class ExperiencesService {
	@Autowired
	ExperiencesRepository repo;

	public List<Experiences> getExperiencesByUserDetailsId(String id) {
		return repo.getExperiencesByUserDetailsId(id);
	}

	public Experiences addExperiences(Experiences ex) {
		return repo.save(ex);
	}

	public Experiences updateExperiences(Long exId, String position, String startDateEX, String endDateEX,
			String companyNameEX) {
		Experiences experiences = repo.findById(exId).get();

		// // update
		// experiences.setUserDetailsId(udID);
		experiences.setPosition(position);
		experiences.setStartDate(startDateEX);
		experiences.setEndDate(endDateEX);
		experiences.setCompanyName(companyNameEX);
		//
		// // save
		repo.save(experiences);
		return null;
	}

	public boolean deleteExperienceById(Long id) {
		try {
			repo.deleteById(id);
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
}
