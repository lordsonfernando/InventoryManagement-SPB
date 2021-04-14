package model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name ="LogFile")
public class LogFile {


		 @Id
		 @Column(nullable=false)
		 @GeneratedValue(strategy=GenerationType.AUTO)
		 private int sno;
		 
		 @Column
		 private String Id;
		 
		 @Column
		 @Size(max=15)
		 private String Action;
		 
		 @Column
		 @DateTimeFormat(pattern = "dd/mm/yyyy")
		 @Temporal(TemporalType.DATE)
		 private Date AccessDate;
		 
		 @Column
		 @Size(max=10)
		 private String AccessTime;

		public int getSno() {
			return sno;
		}

		public void setSno(int sno) {
			this.sno = sno;
		}

		public String getId() {
			return Id;
		}

		public void setId(String id) {
			Id = id;
		}

		public String getAction() {
			return Action;
		}

		public void setAction(String action) {
			Action = action;
		}

		public Date getDate() {
			return AccessDate;
		}

		public void setDate(Date date) {
			AccessDate = date;
		}

		public String getTime() {
			return AccessTime;
		}

		public void setTime(String time) {
			AccessTime = time;
		}

		public LogFile(int sno, String id, @Size(max = 15) String action, java.util.Date date,
				@Size(max = 10) String time) {
			super();
			this.sno = sno;
			Id = id;
			Action = action;
			AccessDate = date;
			AccessTime = time;
		}

		public LogFile() {
			super();
			// TODO Auto-generated constructor stub
		}
		 
}

