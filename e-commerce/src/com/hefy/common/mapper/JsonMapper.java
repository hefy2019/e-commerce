package com.hefy.common.mapper;

import java.io.IOException;

//import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//import com.fasterxml.jackson.annotation.JsonInclude.Include;
//import com.fasterxml.jackson.core.JsonParser.Feature;
//import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * @author hefy:
 * @date 创建时间：2019年7月11日 上午10:41:05
 * @version 1.0 简单封装Jackson，实现JSON String<->Java Object的Mapper. 封装不同的输出风格,
 *          使用不同的builder函数创建实例.
 */

/*public class JsonMapper extends ObjectMapper {

	private static final long serialVersionUID = 1L;
	private static Logger logger = LoggerFactory.getLogger(JsonMapper.class);
	private static JsonMapper mapper;
	
	*//**
	 * 创建只输出非Null且非Empty(如List.isEmpty)的属性到Json字符串的Mapper,建议在外部接口中使用.
	 *//*
	public static JsonMapper getInstance() {
		if (mapper == null){
			mapper = new JsonMapper().enableSimple();
		}
		return mapper;
	}
	
	*//**
	 * 允许单引号
	 * 允许不带引号的字段名称
	 *//*
	public JsonMapper enableSimple() {
		this.configure(Feature.ALLOW_SINGLE_QUOTES, true);
		this.configure(Feature.ALLOW_UNQUOTED_FIELD_NAMES, true);
		this.setSerializationInclusion(Include.NON_NULL);
		return this;
	}
	
	*//**
	 * Object可以是POJO，也可以是Collection或数组。
	 * 如果对象为Null, 返回"null".
	 * 如果集合为空集合, 返回"[]".
	 *//*
	public String toJson(Object object) {
		try {
			return this.writeValueAsString(object);
		} catch (IOException e) {
			logger.warn("write to json string error:" + object, e);
			return null;
		}
	}
	
	*//**
	 * 反序列化POJO或简单Collection如List<String>.
	 * 
	 * 如果JSON字符串为Null或"null"字符串, 返回Null.
	 * 如果JSON字符串为"[]", 返回空集合.
	 * 
	 * 如需反序列化复杂Collection如List<MyBean>, 请使用fromJson(String,JavaType)
	 * @see #fromJson(String, JavaType)
	 *//*
	public <T> T fromJson(String jsonString, Class<T> clazz) {
		if (StringUtils.isEmpty(jsonString)) {
			return null;
		}
		try {
			return this.readValue(jsonString, clazz);
		} catch (IOException e) {
			logger.warn("parse json string error:" + jsonString, e);
			return null;
		}
	}
	
	*//**
	 * 对象转换为JSON字符串
	 * @param object
	 * @return
	 *//*
	public static String toJsonString(Object object){
		return JsonMapper.getInstance().toJson(object);
	}
	
	*//**
	 * JSON字符串转换为对象
	 * @param jsonString
	 * @param clazz
	 * @return
	 *//*
	public static Object fromJsonString(String jsonString, Class<?> clazz){
		return JsonMapper.getInstance().fromJson(jsonString, clazz);
	}
}*/



