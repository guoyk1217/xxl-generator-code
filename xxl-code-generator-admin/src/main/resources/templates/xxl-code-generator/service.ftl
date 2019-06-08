import java.util.Map;

/**
* @description: ${classInfo.classComment}
* @author: gyk
* @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
public interface ${classInfo.className}Service {

    /**
    * 新增
    */
    public ReturnT<String> insert(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 删除
    */
    public ReturnT<String> delete(int id);

    /**
    * 更新
    */
    public ReturnT<String> update(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * Load查询
    */
    public ${classInfo.className} load(int id);

    /**
    * 分页查询
    */
    public PageModel<${classInfo.className}> pageList(PageParam pageParam);

}