package project.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import project.Entity.User;
import project.Repository.UserRepository;

@Component
public class UserService {
	
	@Autowired
	private UserRepository repository;
	
	public User getUser(String userId){
		return repository.getUser(userId);
	}
}
