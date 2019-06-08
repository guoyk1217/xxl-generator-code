import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
* @description: ${classInfo.classComment}
* @author: gyk
* @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
@RestController
public class ConfController {

    @Autowired
    private ${classInfo.className}Service ${classInfo.className?uncap_first}Service;

    /**
    * 新增
    */
    @RequestMapping("/insert")
    public ReturnT<String> insert(${classInfo.className} ${classInfo.className?uncap_first}){
        return ${classInfo.className?uncap_first}Service.insert(${classInfo.className?uncap_first});
    }

    /**
    * 删除
    */
    @RequestMapping("/delete")
    public ReturnT<String> delete(int id){
        return ${classInfo.className?uncap_first}Service.delete(id);
    }

    /**
    * 更新
    */
    @RequestMapping("/update")
    public ReturnT<String> update(${classInfo.className} ${classInfo.className?uncap_first}){
        return ${classInfo.className?uncap_first}Service.update(${classInfo.className?uncap_first});
    }

    /**
    * Load查询
    */
    @RequestMapping("/load")
    public ReturnT<String> load(int id){
        return ${classInfo.className?uncap_first}Service.load(id);
    }

    /**
    * 分页查询
    */
    @RequestMapping("/pageList")
    public ReturnT pageList(PageParam pageParam) {
        return ReturnT.successData(${classInfo.className?uncap_first}Service.pageList(pageParam));
    }

}
