package com.abcjobs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abcjobs.model.BulkEmail;
import com.abcjobs.model.Educations;
import com.abcjobs.model.Experiences;
import com.abcjobs.model.UserDetails;
import com.abcjobs.service.BulkEmailService;
import com.abcjobs.service.EducationsService;
import com.abcjobs.service.ExperiencesService;
import com.abcjobs.service.UserDetailsService;

import helper.Profile;

@Controller
public class DashboardController {

	@Autowired
	UserDetailsService ud;

	@Autowired
	EducationsService eds;

	@Autowired
	ExperiencesService exs;

	@Autowired
	BulkEmailService bes;

	@RequestMapping(value = "/dashboard") // profile overview
	public ModelAndView dashboard(HttpSession session, Model model) throws Exception {
		try {
			this.setModel(model, session);
			return new ModelAndView("dashboard/index");
		} catch (Exception e) {
			System.out.println(e);
			String msg = "Login required";
			model.addAttribute("message", msg);
			return new ModelAndView("login/login");
		}
	}

	@RequestMapping(value = "/profile")
	public ModelAndView profile(HttpSession session, Model model) {
		try {
			this.setModel(model, session);
			return new ModelAndView("dashboard/update-profile");
		} catch (Exception e) {
			System.out.println(e);
			String msg = "Login required";
			model.addAttribute("message", msg);
			return new ModelAndView("login/login");
		}
	}

	@RequestMapping(value = "/update-profile") // update profile GET
	public ModelAndView updateProfile(Model model, HttpSession session) throws Exception {
		try {
			this.setModel(model, session);
			return new ModelAndView("dashboard/update-profile");
		} catch (Exception e) {
			System.out.println(e);
			String msg = "Login required";
			model.addAttribute("message", msg);
			return new ModelAndView("login/login");
		}
	}

	@RequestMapping(value = "/update-profile", method = RequestMethod.POST) // update profile POST
	public String up(@ModelAttribute("profile") UserDetails userDetails, Model model, HttpSession session) {

		Long userDetailsId = Long.parseLong(String.valueOf(session.getAttribute("userId")));
		ud.updateProfile(userDetailsId, userDetails);

		this.setModel(model, session);

		String msg = "Profile has been updated";
		model.addAttribute("message", msg);
//		return "dashboard/profile";
		return "redirect:/profile";
	}

	@RequestMapping(value = "/update-experience", method = RequestMethod.POST) // update profile POST
	public String up(
			// @ModelAttribute("profile") UserDetails userDetails,
			@RequestParam("position") String position, @RequestParam("startDateEX") String startDateEX,
			@RequestParam("endDateEX") String endDateEX, @RequestParam("companyNameEX") String companyNameEX,

			Experiences experiences, Model model, HttpSession session) {

		Long userDetailsId = Long.parseLong(String.valueOf(session.getAttribute("userId")));
		// ud.updateProfile(userDetailsId, userDetails);

		if (position.equals("") || startDateEX.equals("") || endDateEX.equals("") || companyNameEX.equals("")) {
			System.out.println("Experiences Empty");
		} else {
			// exs.updateExperiences(String.valueOf(userDetailsId), experiences);

			experiences.setPosition(position);
			experiences.setStartDate(startDateEX);
			experiences.setEndDate(endDateEX);
			experiences.setCompanyName(companyNameEX);
			experiences.setUserDetailsId(String.valueOf(userDetailsId));

			exs.addExperiences(experiences);
		}

		this.setModel(model, session);

		String msg = "New experience has been added";
		model.addAttribute("message", msg);
		// return "dashboard/update-profile";
		return "redirect:/profile";

	}

	@RequestMapping(value = "/update-education", method = RequestMethod.POST) // update profile POST
	public String up(
			// @ModelAttribute("profile") UserDetails userDetails,
			@RequestParam("intitutionName") String intitutionName, @RequestParam("startDateED") String startDateED,
			@RequestParam("endDateED") String endDateED, @RequestParam("educationName") String educationName,
			Educations educations, Model model, HttpSession session) {

		Long userDetailsId = Long.parseLong(String.valueOf(session.getAttribute("userId")));
		// ud.updateProfile(userDetailsId, userDetails);

		if (intitutionName.equals("") || startDateED.equals("") || endDateED.equals("") || educationName.equals("")) {
			System.out.println("Educations Empty");
		} else {
			educations.setEducationName(educationName);
			educations.setStartDate(startDateED);
			educations.setEndDate(endDateED);
			educations.setIntitutionName(intitutionName);
			educations.setUserDetailsId(String.valueOf(userDetailsId));

			eds.addEducations(educations);
		}

		this.setModel(model, session);

		String msg = "New education has been added";
		model.addAttribute("message", msg);
//		return "dashboard/update-profile";
		return "redirect:/profile";
	}

	private void setModel(Model model, HttpSession session) {
		String userId = String.valueOf(session.getAttribute("userId"));
		String[] userDetails = ud.getDetailsById(userId).replaceAll("null", "-").split(",");
		String udID = userDetails[0];

		model.addAttribute("f", userDetails[1].charAt(0));
		model.addAttribute("l", userDetails[2].charAt(0));

		model.addAttribute("firstName", userDetails[1]);
		model.addAttribute("lastName", userDetails[2]);

		model.addAttribute("fullName", userDetails[1] + " " + userDetails[2]);
		model.addAttribute("title", userDetails[3]);
		model.addAttribute("about", userDetails[4]);
		model.addAttribute("company", userDetails[5]);
		model.addAttribute("email", session.getAttribute("email"));
		model.addAttribute("website", userDetails[6]);

		// experiences
		model.addAttribute("ex", exs.getExperiencesByUserDetailsId(udID)); // Experiences[]

		// educations
		model.addAttribute("ed", eds.getEducationsByUserDetailsId(udID)); // Educations[]

		// notifications
		List<BulkEmail> be = bes.getEmail();
		model.addAttribute("nf1", be.get(be.size() - 1));
		model.addAttribute("nf2", be.get(be.size() - 2));
		model.addAttribute("nf3", be.get(be.size() - 3));
	}

	@RequestMapping(value = "edit-experience-{id}", method = RequestMethod.POST)
	public String editExperience(@PathVariable("id") Long id, @RequestParam("position") String position,
			@RequestParam("startDateEX") String startDateEX, @RequestParam("endDateEX") String endDateEX,
			@RequestParam("companyNameEX") String companyNameEX, Experiences experiences, Model model,
			HttpSession session) {
		
		exs.updateExperiences(id, position, startDateEX, endDateEX, companyNameEX);
		
		return "redirect:/profile";
	}
	@RequestMapping(value = "edit-education-{id}", method = RequestMethod.POST)
	public String editEducation(@PathVariable("id") Long id, @RequestParam("intitutionName") String intitutionName,
			@RequestParam("startDateED") String startDate, @RequestParam("endDateED") String endDate,
			@RequestParam("educationName") String educationName, Educations educations, Model model,
			HttpSession session) {
		
		eds.updateExperiences(id, intitutionName, startDate, endDate, educationName);
		
		return "redirect:/profile";
	}
	
	@RequestMapping(value="/delete/experience/{id}") 
	public String deleteExperienceById(@PathVariable("id") Long id, Model model) {
		boolean isDeleted = exs.deleteExperienceById(id);
		if(isDeleted) {
//			model.addAttribute("err", "Cannot delete this education");
		}
		
		return "redirect:/profile";
	}
	
	
	@RequestMapping(value="/delete/education/{id}") 
	public String deleteEducationById(@PathVariable("id") Long id, Model model) {
		boolean isDeleted = eds.deleteEducationById(id);
		if(isDeleted) {
//			model.addAttribute("err", "Cannot delete this education");
		}
		
		return "redirect:/profile";
	}
	
}
