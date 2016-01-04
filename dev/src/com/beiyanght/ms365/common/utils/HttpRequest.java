package com.beiyanght.ms365.common.utils;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * @description	HttpRequst工具类
 * @author  ZCF
 */
public class HttpRequest {

	/**
     * 发送http GET请求
     * @param url?&name1=value1&name2=value2
     */
    public static String get(String url) {
		return httpRequest("GET", url, null);
    }
    
    /**
     * 发送http POST请求
     * @param url
     * @param &name1=value1&name2=value2
     */
    public static String post(String url, String param) {
		return httpRequest("POST", url, param);
    }

    /**
	 * 发送http请求
	 * @param requestMethod 请求方式（GET、POST）
	 * @param requestUrl 请求地址
	 * @param outputStr 提交的数据
	 */
    public static String httpRequest(String requestMethod, String requestUrl, String outputStr) {
    	String result = null;
		StringBuffer buffer = new StringBuffer();
		try {

			URL url = new URL(requestUrl);
			// 打开连接
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			// 允许URL进行输入、输出连接
			conn.setDoOutput(true);
			conn.setDoInput(true);
			// 禁止缓存
			conn.setUseCaches(false);
			// 设置请求方式（GET/POST）
			conn.setRequestMethod(requestMethod);
			
			conn.connect();
			// 当有数据需要提交时
			if (null != outputStr) {
				OutputStream outputStream = conn.getOutputStream();
				// 注意编码格式，防止中文乱码
				outputStream.write(outputStr.getBytes("UTF-8"));
				outputStream.close();
			}
			// 将返回的输入流转换成字符串
			InputStream inputStream = conn.getInputStream();
			InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");
			BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

			String str = null;
			while ((str = bufferedReader.readLine()) != null) {
				buffer.append(str);
			}
			bufferedReader.close();
			inputStreamReader.close();
			// 释放资源
			inputStream.close();
			inputStream = null;
			conn.disconnect();
			
			return buffer.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	} 
}
