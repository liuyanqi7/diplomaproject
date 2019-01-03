package cn.liuyanqi.service;

import cn.liuyanqi.dao.IListDao;
import cn.liuyanqi.entity.House;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @BelongsProject: projectHouse
 * @ClassName:ListServiceImpl
 * @Author: 刘延琦
 * @CreateTime: 2019-1-2 15:55:55 15:55
 * @Version: 1.0
 */
@Service("listService")
public class ListServiceImpl implements IListService{
    @Resource
    private IListDao listDao;
    @Override
    public Page queryList(Map<String, Object> cond){
        Page page = new Page();

        page.setTotal(5);
        System.out.println("总页数"+page.getTotal());
        // 从请求参数中获取每页大小
        int pageSize = Integer.parseInt(String.valueOf(cond.get("pageSize")));
        page.setPageSize(pageSize);
        // 从请求参数中获取当前页码
        int curPageNum = Integer.parseInt(String.valueOf(cond.get("pageNum")));
        page.setPageNum(curPageNum);
        //根据条件查询符合的用户列表记录，赋值给page的result变量
        page = PageHelper.startPage(curPageNum, pageSize);
        List<House> houses = listDao.listInfo(cond);
        for (House house : houses) {
            System.out.println(house.getId());
        }
        return page;
    }

    public IListDao getListDao() {
        return listDao;
    }

    public void setListDao(IListDao listDao) {
        this.listDao = listDao;
    }
}
