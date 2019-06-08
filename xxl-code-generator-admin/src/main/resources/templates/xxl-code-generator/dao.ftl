import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
* @description: ${classInfo.classComment}
* @author: gyk
* @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
@Mapper
public interface ${classInfo.className}Mapper {

    /**
    * 新增
    */
    int insert(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * 删除
    */
    int delete(int id);

    /**
    * 更新
    */
    int update(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * Load查询
    */
    ${classInfo.className} load(int id);

    /**
    * 分页查询Data
    */
	List<${classInfo.className}> pageList(PageParam<${classInfo.className}> pageParam);

    /**
    * 分页查询Count
    */
    int pageListCount(PageParam<${classInfo.className}> pageParam);

}
