package cn.liuyanqi.service;

import cn.liuyanqi.entity.House;
import com.github.pagehelper.Page;

import java.util.List;
import java.util.Map;

/**
 * @BelongsProject: projectHouse
 * @ClassName:IListService
 * @Author: 刘延琦
 * @CreateTime: 2019-1-2 15:54:39 15:54
 * @Version: 1.0
 */
public interface IListService {
    Page queryList(Map<String, Object> cond);
}
