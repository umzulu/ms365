package com.beiyanght.ms365.housing;

import java.util.Map;

import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import com.beiyanght.ms365.common.utils.Service;
import com.sun.jersey.api.view.Viewable;

@Path(value="/housing")
public class HousingServlet {

	/**
	 * @description 索引页面
	 * @description 注意：path必须有对应的Constants常量
	 */
	@GET
	@Path("/{path}")
	@Produces("text/html")
	public Viewable index(@PathParam(value="path") String path, @DefaultValue("0") @QueryParam("start") Integer start) throws Exception{
		if ("index".equals(path)) {
			return new Viewable("/housing/housing");
		}
		Map<String, Object> data = Service.getMapData(path, start);
		return new Viewable("/housing/"+path, data);
	}
	
	/**
	 * @description 加载更多明细
	 * @description 注意：path必须有对应的Constants常量
	 */
	@GET
	@Path("/{path}/getMore")
	@Produces("application/json") 
	public Map<String, Object> getMore(@PathParam(value="path") String path, @QueryParam("start") Integer start) throws Exception{
		Map<String, Object> data = Service.getMapData(path, start);
		return data;
	}
}
