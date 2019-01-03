package cn.liuyanqi.dao;

import cn.liuyanqi.entity.House;

import java.util.List;
import java.util.Map;

/**
 * @BelongsProject: projectHouse
 * @ClassName:IListDao
 * @Author: 刘延琦
 * @CreateTime: 2019-1-2 15:49:45 15:49
 * @Version: 1.0
 */
public interface IListDao {
    List<House> listInfo(Map<String,Object> map);


    int listCout(Map<String,Object> map);
}
