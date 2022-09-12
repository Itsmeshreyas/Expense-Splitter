package study.ExpenseSplitter.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import study.ExpenseSplitter.model.User;
import study.ExpenseSplitter.repository.UserRepository;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class UserController {

	@Autowired
	private UserRepository userRepository;
	
	//get all users
	@GetMapping("/users")
	public List<User> getAllUsers(){
		return userRepository.findAll();
	}
}
