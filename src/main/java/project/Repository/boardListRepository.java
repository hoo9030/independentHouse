package project.Repository;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import project.Entity.Board;

@Repository
public class boardListRepository {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public boardListRepository(DataSource dataSource){
		jdbcTemplate = new JdbcTemplate(dataSource);		
	}

	public List<Board> showBoardList() {
		// TODO Auto-generated method stub
		String sql = "select * from Board";
		return jdbcTemplate.query(sql, (rs, num) -> new Board(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4)));

	}

}
