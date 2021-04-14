package repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.User;

/**
 * User Repository interface
 * 
 * @author VK5061978
 *
 */
@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

	/**
	 * Delete user method
	 * 
	 * @param id
	 */
	@Modifying
	@Transactional
	@Query("delete from User u where u.id = ?1")
	void deleteUsers(String id);

	@Modifying
	@Transactional
	@Query(value="update Users  set  PASSWORD=?2 where ID=?1",nativeQuery=true)
	void updateUser(String userId, String password);

}