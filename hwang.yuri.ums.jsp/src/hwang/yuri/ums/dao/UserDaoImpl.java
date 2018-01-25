package hwang.yuri.ums.dao;

import java.util.List;

import hwang.yuri.ums.config.Configuration;
import hwang.yuri.ums.dao.mapper.UserMapper;
import hwang.yuri.ums.domain.User;

public class UserDaoImpl implements UserDao{
	private UserMapper userMapper;
	
	public UserDaoImpl(){
		this.userMapper = Configuration.getMapper(UserMapper.class);
	}
	
	@Override
	public List<User>getUsers(){
		return userMapper.getUsers();
	}
	
	@Override
	public User getUser(int userNo) {
		return userMapper.getUser(userNo);
	}
	
	@Override
	public boolean addUser(String userName) {
		boolean isAdd = false;
		if(userMapper.addUser(userName)>0)
			isAdd = true;
		return isAdd;
	}
	
	@Override
	public boolean updateUser(User user){
		boolean isModify = false;
		if(userMapper.updateUser(user)>0)
			isModify = true;

		return isModify;
	}
	
	@Override
	public boolean delUser(int userNo){
		boolean isDel = false;
		if(userMapper.delUser(userNo)>0)
			isDel = true;
		return isDel;
	}
}
