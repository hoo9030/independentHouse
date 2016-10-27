package independentHouse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import independentHouse.repository.CalculateRepository;

@Service
public class CalculateService {

	@Autowired
	private CalculateRepository repository;

	public int calculateFee(int current) {
		// TODO Auto-generated method stub
		return repository.calculateFee(current);
	}
}
