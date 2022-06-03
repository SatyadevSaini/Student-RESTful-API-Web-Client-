package com.incapp.Controlller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.incapp.bean.Student;

@Controller
public class MyController {
	
	
	RestTemplate restTemplate = new RestTemplate();
	
	String URI = "http://localhost:9810/";
	
	
	@RequestMapping("/")
	public String home() {
		return"index";
	}
	
	@ModelAttribute
	public void commonValue(Model model) {

		String API = "studentid";
		List<Integer> ids = restTemplate.getForObject(URI + API, List.class);
		model.addAttribute("id", ids);
	}
	
	@RequestMapping("/addStudent")
    public String addStudent(@ModelAttribute Student s , Model model) {
		
		String API= "studentadd";
		HttpEntity<Student> entity = new HttpEntity(s);
		String result = restTemplate.postForObject(URI+API, entity, String.class);
		
		model.addAttribute("result", result);
		return"index";
		
	}
	
	
	@RequestMapping("/studentlike")
	public String getStudentNameLike(String name , Model model) {
      
		String API ="students/"+name;
		List<Student> data = restTemplate.getForObject(URI+API, List.class);
		
		model.addAttribute("data",data);
		
		return"like";
	}
	
	
	
	@RequestMapping("/deleteStudent")
	public String deleteStudent(String name , Model model) {
	 
		String API ="student/"+name;
		
	      ResponseEntity<String> delete = restTemplate.exchange(URI+API, HttpMethod.DELETE, null, String.class);
		
         String del = delete.getBody();	
         model.addAttribute("delete", del);
        
		return"index";
	}
	
	@RequestMapping("/updateStudent")
	public String updateStudent(@ModelAttribute Student student , int sid , Model model ) {
		
		String API = "studentupdate/"+sid;
		HttpEntity<Student> st =  new HttpEntity(student);
		
		ResponseEntity<String> update = restTemplate.exchange(URI+API , HttpMethod.PUT, st, String.class);
		
		String up = update.getBody();
		model.addAttribute("update",up);
		
		return"index";
			
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
