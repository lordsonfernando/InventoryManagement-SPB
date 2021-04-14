package com.example.demo;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import controller.LogController;
import model.LogFile;
import model.MaterialsLog;
import model.User;


@SpringBootApplication
@ComponentScan(basePackageClasses = LogController.class)
@EnableJpaRepositories("repository")
//@EntityScan(basePackageClasses = MaterialsLog.class)
@EntityScan(basePackageClasses = LogFile.class)


/**
 * Material Log Application
 * 
 * 
 * @author VK5061978
 *
 */
public class LogApplication {

	public static void main(String[] args) {
		SpringApplication.run(LogApplication.class, args);
		System.out.println("Working.......");
		Date objDate=new Date();
		String strDateFormat="hh:mm:ss";
		DateFormat dte =new SimpleDateFormat(strDateFormat);
		String fdate = dte.format(objDate);

		//DateTimeFormatter.ofPattern("yyyy-MM-dd", Locale.ENGLISH).toFormat(date);

		System.out.println(fdate);

	}
}
