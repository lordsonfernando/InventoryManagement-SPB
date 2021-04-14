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
@Table(name ="Materials")
public class MaterialsLog {
	 @Id
	 @Column(nullable=false)
	 @GeneratedValue(strategy=GenerationType.AUTO)
	 private int sno;
	 
	 
	 @Column
	 private String transactionType;  //type
	
	
	 @Column
	 private String inSupplierAddress;
	 
	 @Column
	 @Size(max=30)
	 private String inSupplierName;
	   
	 
	 @Column
	 @Size(max=15)
	 private String inSupplierIdType;
	 
	 @Column
	 @Size(max=20)
	 private String inSupplierIdNumber;
	 
	 @Column
	 @Size(max=10)
	 private String ingpdcNumber;
	 
	 @Column
	 private String productDescription;
	 
	 @Column
	 private int quantity;
	 
	 @Column
	 @Size(max=5)
	 private String measurement;
	 
	 @Column
	 @DateTimeFormat(pattern = "dd/mm/yyyy")
	 @Temporal(TemporalType.DATE)
	 private Date inDate;

	 @Column
	 @Size(max=10)
	 private String inTime;
	 
	 
	 @Column
	 @Size(max=15)
	 private String receiverId;
	 
	 @Column
	 @DateTimeFormat(pattern = "dd/mm/yyyy")
	 @Temporal(TemporalType.DATE)
	 private Date inExpectedOutDate;
	 
	 @Column
	 @Size(max=20)
	 private String inSecurityId;
	 

	  @Column
	 private String outSupplierAddress;

	 @Column
	 @Size(max=30)
	 private String outSupplierName;
	 
	 @Column
	 @Size(max=15)
	 private String outSupplierIdType;

	 @Column
	 @Size(max=20)
	 private String outSupplierIdNumber;
	 
	 @Column
	 @Size(max=10)
	 private String outgpdcNumber;
	 
	 @Column
	 @DateTimeFormat(pattern = "dd/mm/yyyy")
	 @Temporal(TemporalType.DATE)
	 private Date outDate;
	 
	 @Column
	 @Size(max=10)
	 private String outTime;
	 
	 @Column
	 @Size(max=15)
	 private String senderId;
		 	
	 @Column
	 @Size(max=20)
	 private String outSecurityId;
	 	
	 
	 @Column
	 @DateTimeFormat(pattern = "dd/mm/yyyy")
	 @Temporal(TemporalType.DATE)
	 private Date outExpectedInDate;


	 
	public MaterialsLog() {
		super();
		// TODO Auto-generated constructor stub
	}


	public MaterialsLog(int sno, String transactionType, String inSupplierAddress,
			@Size(max = 30) String inSupplierName, @Size(max = 15) String inSupplierIdType,
			@Size(max = 20) String inSupplierIdNumber, @Size(max = 10) String ingpdcNumber, String productDescription,
			@Size(max = 5) int quantity, @Size(max = 5) String measurement, Date inDate, @Size(max = 10) String inTime,
			@Size(max = 15) String receiverId, Date inExpectedOutDate, @Size(max = 20) String inSecurityId,
			String outSupplierAddress, @Size(max = 30) String outSupplierName, @Size(max = 15) String outSupplierIdType,
			@Size(max = 20) String outSupplierIdNumber, @Size(max = 10) String outgpdcNumber, Date outDate,
			@Size(max = 10) String outTime, @Size(max = 20) String outSecurityId, Date outExpectedInDate) {
		super();
		this.sno = sno;
		this.transactionType = transactionType;
		this.inSupplierAddress = inSupplierAddress;
		this.inSupplierName = inSupplierName;
		this.inSupplierIdType = inSupplierIdType;
		this.inSupplierIdNumber = inSupplierIdNumber;
		this.ingpdcNumber = ingpdcNumber;
		this.productDescription = productDescription;
		this.quantity = quantity;
		this.measurement = measurement;
		this.inDate = inDate;
		this.inTime = inTime;
		this.receiverId = receiverId;
		this.inExpectedOutDate = inExpectedOutDate;
		this.inSecurityId = inSecurityId;
		this.outSupplierAddress = outSupplierAddress;
		this.outSupplierName = outSupplierName;
		this.outSupplierIdType = outSupplierIdType;
		this.outSupplierIdNumber = outSupplierIdNumber;
		this.outgpdcNumber = outgpdcNumber;
		this.outDate = outDate;
		this.outTime = outTime;
		this.outSecurityId = outSecurityId;
		this.outExpectedInDate = outExpectedInDate;
	}


	@Override
	public String toString() {
		return "MaterialsLog [sno=" + sno + ", transactionType=" + transactionType + ", inSupplierAddress="
				+ inSupplierAddress + ", inSupplierName=" + inSupplierName + ", inSupplierIdType=" + inSupplierIdType
				+ ", inSupplierIdNumber=" + inSupplierIdNumber + ", ingpdcNumber=" + ingpdcNumber
				+ ", productDescription=" + productDescription + ", quantity=" + quantity + ", measurement="
				+ measurement + ", inDate=" + inDate + ", inTime=" + inTime + ", receiverId=" + receiverId
				+ ", inExpectedOutDate=" + inExpectedOutDate + ", inSecurityId=" + inSecurityId
				+ ", outSupplierAddress=" + outSupplierAddress + ", outSupplierName=" + outSupplierName
				+ ", outSupplierIdType=" + outSupplierIdType + ", outSupplierIdNumber=" + outSupplierIdNumber
				+ ", outgpdcNumber=" + outgpdcNumber + ", outDate=" + outDate + ", outTime=" + outTime
				+ ", outSecurityId=" + outSecurityId + ", outExpectedInDate=" + outExpectedInDate + "]";
	}


	public int getSno() {
		return sno;
	}


	public void setSno(int sno) {
		this.sno = sno;
	}


	public String getTransactionType() {
		return transactionType;
	}


	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}


	public String getInSupplierAddress() {
		return inSupplierAddress;
	}


	public void setInSupplierAddress(String inSupplierAddress) {
		this.inSupplierAddress = inSupplierAddress;
	}


	public String getInSupplierName() {
		return inSupplierName;
	}


	public void setInSupplierName(String inSupplierName) {
		this.inSupplierName = inSupplierName;
	}


	public String getInSupplierIdType() {
		return inSupplierIdType;
	}


	public void setInSupplierIdType(String inSupplierIdType) {
		this.inSupplierIdType = inSupplierIdType;
	}


	public String getInSupplierIdNumber() {
		return inSupplierIdNumber;
	}


	public void setInSupplierIdNumber(String inSupplierIdNumber) {
		this.inSupplierIdNumber = inSupplierIdNumber;
	}


	public String getIngpdcNumber() {
		return ingpdcNumber;
	}


	public void setIngpdcNumber(String ingpdcNumber) {
		this.ingpdcNumber = ingpdcNumber;
	}


	public String getProductDescription() {
		return productDescription;
	}


	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public String getMeasurement() {
		return measurement;
	}


	public void setMeasurement(String measurement) {
		this.measurement = measurement;
	}


	public Date getInDate() {
		return inDate;
	}


	public void setInDate(Date inDate) {
		this.inDate = inDate;
	}


	public String getInTime() {
		return inTime;
	}


	public void setInTime(String inTime) {
		this.inTime = inTime;
	}


	public String getReceiverId() {
		return receiverId;
	}


	public void setReceiverId(String receiverId) {
		this.receiverId = receiverId;
	}


	public Date getInExpectedOutDate() {
		return inExpectedOutDate;
	}


	public void setInExpectedOutDate(Date inExpectedOutDate) {
		this.inExpectedOutDate = inExpectedOutDate;
	}


	public String getInSecurityId() {
		return inSecurityId;
	}


	public void setInSecurityId(String inSecurityId) {
		this.inSecurityId = inSecurityId;
	}


	public String getOutSupplierAddress() {
		return outSupplierAddress;
	}


	public void setOutSupplierAddress(String outSupplierAddress) {
		this.outSupplierAddress = outSupplierAddress;
	}


	public String getOutSupplierName() {
		return outSupplierName;
	}


	public void setOutSupplierName(String outSupplierName) {
		this.outSupplierName = outSupplierName;
	}


	public String getOutSupplierIdType() {
		return outSupplierIdType;
	}


	public void setOutSupplierIdType(String outSupplierIdType) {
		this.outSupplierIdType = outSupplierIdType;
	}


	public String getOutSupplierIdNumber() {
		return outSupplierIdNumber;
	}


	public void setOutSupplierIdNumber(String outSupplierIdNumber) {
		this.outSupplierIdNumber = outSupplierIdNumber;
	}


	public String getOutgpdcNumber() {
		return outgpdcNumber;
	}


	public void setOutgpdcNumber(String outgpdcNumber) {
		this.outgpdcNumber = outgpdcNumber;
	}


	public Date getOutDate() {
		return outDate;
	}


	public void setOutDate(Date outDate) {
		this.outDate = outDate;
	}


	public String getOutTime() {
		return outTime;
	}


	public void setOutTime(String outTime) {
		this.outTime = outTime;
	}


	public String getOutSecurityId() {
		return outSecurityId;
	}


	public void setOutSecurityId(String outSecurityId) {
		this.outSecurityId = outSecurityId;
	}


	public Date getOutExpectedInDate() {
		return outExpectedInDate;
	}


	public void setOutExpectedInDate(Date outExpectedInDate) {
		this.outExpectedInDate = outExpectedInDate;
	}


	
	
}	 
	 