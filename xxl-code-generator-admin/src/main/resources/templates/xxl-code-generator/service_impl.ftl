import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* @description: ${classInfo.classComment}
* @author: gyk
* @date: created in '${.now?string('yyyy-MM-dd HH:mm:ss')}'
*/
@Service
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Service {

	@Autowired
	private ${classInfo.className}Mapper ${classInfo.className?uncap_first}Mapper;

	/**
    * 新增
    */
	@Override
	public ReturnT<String> insert(${classInfo.className} ${classInfo.className?uncap_first}) {

		// valid
		if (${classInfo.className?uncap_first} == null) {
			return new ReturnT<String>(ReturnT.FAIL_CODE, "必要参数缺失");
        }

		${classInfo.className?uncap_first}Mapper.insert(${classInfo.className?uncap_first});
        return ReturnT.SUCCESS;
	}

	/**
	* 删除
	*/
	@Override
	public ReturnT<String> delete(int id) {
		int ret = ${classInfo.className?uncap_first}Mapper.delete(id);
		return ret>0?ReturnT.SUCCESS:ReturnT.FAIL;
	}

	/**
	* 更新
	*/
	@Override
	public ReturnT<String> update(${classInfo.className} ${classInfo.className?uncap_first}) {
		int ret = ${classInfo.className?uncap_first}Mapper.update(${classInfo.className?uncap_first});
		return ret>0?ReturnT.SUCCESS:ReturnT.FAIL;
	}

	/**
	* Load查询
	*/
	@Override
	public ${classInfo.className} load(int id) {
		return ${classInfo.className?uncap_first}Mapper.load(id);
	}

	/**
	* 分页查询
	*/
	@Override
	public PageModel<${classInfo.className}> pageList(PageParam pageParam) {

		List<${classInfo.className}> pageList = ${classInfo.className?uncap_first}Mapper.pageList(pageParam);
		int totalCount = ${classInfo.className?uncap_first}Mapper.pageListCount(pageParam);

		return PageModel.pageResult(totalCount, pageParam.getPageSize(), pageParam.getCurrentPage(), pageList);
	}

}
