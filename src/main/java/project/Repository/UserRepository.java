package project.Repository;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import project.Entity.User;

@Component
public class UserRepository {
	
	private HashMap<String, User> users;
	

	public UserRepository(){
		users= new HashMap<>();
		users.put("hong", new User("hong", "123", "서울"));
		users.put("kim", new User("kim", "123", "경기"));
		users.put("park", new User("park", "123", "인천"));
	}
	
	public User getUser(String userId){
		return users.get(userId);
	}
}
