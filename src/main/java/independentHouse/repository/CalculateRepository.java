package independentHouse.repository;

import org.springframework.stereotype.Repository;

@Repository
public class CalculateRepository {

	public int calculateFee(int current) {
		// TODO Auto-generated method stub
		if (current > 500) {
			current *= 709.5;
		}else if (current > 400 && current <= 500){
			current *= 417.7;
		}
		else if (current > 300 && current <= 400){
			current *= 280.6;
		}
		else if (current > 200 && current <= 300){
			current *= 187.9;
		}
		else if (current > 100 && current <= 200){
			current *= 125.9;
		}
		else{
			current *= 60.7;
		}
		return current;
	}

}
