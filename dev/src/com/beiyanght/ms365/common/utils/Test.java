package com.beiyanght.ms365.common.utils;

public class Test {

	public static void main(String[] args) throws Exception {
		String s = HttpRequest.get("http://123.57.151.105:9080/esb/67?&pageStart=0&pageSize=5");
		//String s = HttpRequest.post("http://123.57.151.105:9080/esb/2", "&pageStart=0&pageSize=5");
		
		System.out.println(s);
		System.out.println(JsonUtil.Json2Map(s));  
	}
	
}
