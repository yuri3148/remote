package hwang.yuri.ums.dao;

import java.util.List;
import hwang.yuri.ums.domain.User;

public interface UserDao {
	List<User> getUsers();
	User getUser(int userNo);
	boolean addUser(String userName);
	boolean updateUser(User user);
	boolean delUser(int userNo);
}