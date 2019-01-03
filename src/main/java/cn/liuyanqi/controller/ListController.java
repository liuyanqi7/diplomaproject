package cn.liuyanqi.controller;

import cn.liuyanqi.entity.House;
import cn.liuyanqi.service.ListServiceImpl;
import com.github.pagehelper.Page;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @BelongsProject: projectHouse
 * @ClassName:ListController
 * @Author: 刘延琦
 * @CreateTime: 2019-1-2 15:38:53 15:38
 * @Version: 1.0
 */
@RestController
public class ListController {
    @Resource
    private ListServiceImpl listService;
    @RequestMapping("/getPage")
    public Map queryUsersByPage(int pageNum, int pageSize, House house) {
        Map map=new HashMap();
        map.put("pageSize", pageSize);
        map.put("pageNum", pageNum);
        map.put("house", house);
        Page page=listService.queryList(map);
        map.put("page", page);
        map.put("totalPage", page.getPages());
        return map;
    }
    @RequestMapping("/index")
    public ModelAndView index() {
        System.out.println("a");
        return new ModelAndView("/list.html");
    }

    public ListServiceImpl getListService() {
        return listService;
    }

    public void setListService(ListServiceImpl listService) {
        this.listService = listService;
    }
}
