package repository;



import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.MaterialsLog;
	
	@Repository
	public interface MaterialRepo  extends JpaRepository <MaterialsLog,Integer>{

		
		
		//@Modifying
		//@Transactional
		@Query( value= "select * from Materials where IN_DATE = ?1", nativeQuery=true)
       	List<MaterialsLog> findByDate(String date);
        
		@Modifying
		@Transactional
		@Query(value="update Materials set OUT_SUPPLIER_NAME=?2 ,OUT_SUPPLIER_ID_TYPE=?3 ,OUT_SUPPLIER_ID_NUMBER= ?4,OUT_SUPPLIER_ADDRESS=?5 ,OUTGPDC_NUMBER=?6,OUT_TIME=?7 ,OUT_SECURITY_ID=?8, TRANSACTION_TYPE = ?9,OUT_EXPECTED_IN_DATE=?10,OUT_DATE=?11 where SNO=?1",nativeQuery=true)
		void updateOutReturn(int sno, String outSupplierName, String outSupplierIdType, String outSupplierIdNumber, String outSupplierAddress, String outgpdcNumber,String outTime, String outSecurityId, String transactionType,String outExpectedInDate,String outDate);

		@Query( value= "select * from Materials where IN_DATE >= ?1 AND IN_DATE <=?2", nativeQuery=true)
		List<MaterialsLog> findMaterialByDate(String fdate, String tdate);

		@Query( value= "select * from Materials where TRANSACTION_TYPE = ?1", nativeQuery=true)
		List<MaterialsLog> findMaterialByType(String typeSearch);

		@Modifying
		@Transactional
		@Query(value="update Materials set OUT_SUPPLIER_NAME=?2 ,OUT_SUPPLIER_ID_TYPE=?3 ,OUT_SUPPLIER_ID_NUMBER= ?4,OUT_SUPPLIER_ADDRESS=?5 ,OUTGPDC_NUMBER=?6,OUT_TIME=?7 ,OUT_SECURITY_ID=?8, TRANSACTION_TYPE = ?9,OUT_DATE=?10,SENDER_ID=?11 where SNO=?1",nativeQuery=true)
		void updateOutNonReturn(int sno, String outSupplierName, String outSupplierIdType, String outSupplierIdNumber,String outSupplierAddress, String outgpdcNumber, String outTime, String outSecurityId,String transactionType, String outDate,String senderId);

		
		@Query( value= "select * from Materials where IN_DATE = ?1", nativeQuery=true)
		List<MaterialsLog> findMaterialBySearchDate(String sdate);

		
         
			
	

	}


