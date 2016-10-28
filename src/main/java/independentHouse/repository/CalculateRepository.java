package independentHouse.repository;

import org.springframework.stereotype.Repository;

@Repository
public class CalculateRepository {

	public int calculateFee(int current) {
		// TODO Auto-generated method stub
		int temp1 = 6070, temp2 = 12590, temp3 = 18790, temp4 = 28060, temp5 = 41770;
		
		if (current <= 100) {
			current = (int) (410 + current * 60.7); 
		} 
		else if(current > 100 && current <=200){
			current = (int) (910 + temp1 + (current-100) * 125.9);
		} 
		else if(current > 200 && current <=300){
			current = (int) (1600 + temp1 + temp2 + (current-200) * 187.9);
		}
		else if(current > 300 && current <=400){
			current = (int) (3850 + temp1 + temp2 + temp3 + (current-300) * 280.6);
		}
		else if(current > 400 && current <=500){
			current = (int) (7300 + temp1 + temp2 + temp3 + temp4 + (current-400) * 417.7);
		}
		else if(current > 500){
			current = (int) (12940 + temp1 + temp2 + temp3 + temp4 + temp5 + (current-500) * 709.5);
		}
		return (int) (current * 1.1 * 1.037);
	}

}
