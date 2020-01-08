package cn.lzg.ssm.service;

import java.util.List;

import cn.lzg.ssm.pojo.User;

public interface UserService {
	public User selectByPrimaryKey(Integer id);

	public List<User> selectList();

	public int insert(User user);

	public int updateByPrimaryKey(User user);

	public int deleteByPrimaryKey(Integer id);
}
