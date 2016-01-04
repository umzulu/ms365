package com.beiyanght.ms365.common.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * @description	解析JSON
 * @return  Map { data: {count:5, list:[{},{},...]}, errorCode:"SUCCESS"}
 *              { data: null, errorCode:"SUCCESS"}
 * @author  ZCF
 */
public class JsonUtil {

	// 解析最外层 JSONObject
	public static Map<String, Object> Json2Map(String jsonStr){
		Map<String, Object> map = new HashMap<String, Object>();
		
        JSONObject json = JSONObject.fromObject(jsonStr);
        JSONObject data = json.getJSONObject("data");
        Object errorCode = json.get("error_code");
        
        map.put("data", parseJSON2Map(data));
        map.put("errorCode", errorCode);
        return map;
    }

	// 解析第二层 JSONObject
	private static Map<String, Object> parseJSON2Map(JSONObject data) {
		if (data == null) return null;
		
		Map<String, Object> map = new HashMap<String, Object>();
		for (Object k : data.keySet()) {
			Object v = data.get(k);
			// 如果内层还是数组的话，继续解析
			if (v instanceof JSONArray) {
				List<Map<String, Object>> list = parseJSON2List(v);
				map.put(k.toString(), list);
			} else {
				map.put(k.toString(), v);
			}
		}
		return map;
	}
    
	// 解析第三层 JSONArray
	private static List<Map<String, Object>> parseJSON2List(Object v){
    	List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
    	
        JSONArray jsonArr = JSONArray.fromObject(v);
        Iterator<JSONObject> it = jsonArr.iterator();
        while(it.hasNext()){
            JSONObject json = it.next();
            list.add(parseJSON2Map(json));
        }
        return list;
    }
}
