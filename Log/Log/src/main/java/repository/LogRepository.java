package repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import model.LogFile;


	@Repository
	public interface  LogRepository  extends JpaRepository <LogFile,Integer>{
	}
	



