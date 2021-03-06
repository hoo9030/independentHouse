package independentHouse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import independentHouse.entity.User;
import independentHouse.repository.UserRepository;

@Component
public class UserService {
	
	@Autowired
	private UserRepository repository;
	
	public User getUser(String userId){
		return repository.getUser(userId);
	}

	public void signup(String id, String pass, String addr) {
		// TODO Auto-generated method stub
		repository.signup(id, pass, addr);
	}
}
