package hwang.yuri.ums.service;

import hwang.yuri.ums.domain.User;
import java.util.List;

public interface UserService {
	List<User>listUsers();
	User findUser(int userNo);
	boolean join(String userName);
	public boolean correctUser(User user);
	boolean secede(int userNo);
}