package com.beiyanght.ms365.common.utils;

import java.lang.reflect.Field;
import java.util.Map;

import com.beiyanght.ms365.common.constants.Constants;

public class Service {

	public static Map<String, Object> getMapData(String path, Integer start) throws Exception {
		//反射取值
		Constants constants = new Constants();
		Class<?> clazz = constants.getClass();
		Field field = clazz.getField(path.toUpperCase()); 
		Object url = field.get(clazz);
		//HTTPGET 调用API
		String jsonStr = HttpRequest.get(url.toString() + start);
		//解析JSON
		return JsonUtil.Json2Map(jsonStr);
	}
}
