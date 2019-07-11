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
 * @date ����ʱ�䣺2019��7��11�� ����10:41:05
 * @version 1.0 �򵥷�װJackson��ʵ��JSON String<->Java Object��Mapper. ��װ��ͬ��������,
 *          ʹ�ò�ͬ��builder��������ʵ��.
 */

/*public class JsonMapper extends ObjectMapper {

	private static final long serialVersionUID = 1L;
	private static Logger logger = LoggerFactory.getLogger(JsonMapper.class);
	private static JsonMapper mapper;
	
	*//**
	 * ����ֻ�����Null�ҷ�Empty(��List.isEmpty)�����Ե�Json�ַ�����Mapper,�������ⲿ�ӿ���ʹ��.
	 *//*
	public static JsonMapper getInstance() {
		if (mapper == null){
			mapper = new JsonMapper().enableSimple();
		}
		return mapper;
	}
	
	*//**
	 * ��������
	 * ���������ŵ��ֶ�����
	 *//*
	public JsonMapper enableSimple() {
		this.configure(Feature.ALLOW_SINGLE_QUOTES, true);
		this.configure(Feature.ALLOW_UNQUOTED_FIELD_NAMES, true);
		this.setSerializationInclusion(Include.NON_NULL);
		return this;
	}
	
	*//**
	 * Object������POJO��Ҳ������Collection�����顣
	 * �������ΪNull, ����"null".
	 * �������Ϊ�ռ���, ����"[]".
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
	 * �����л�POJO���Collection��List<String>.
	 * 
	 * ���JSON�ַ���ΪNull��"null"�ַ���, ����Null.
	 * ���JSON�ַ���Ϊ"[]", ���ؿռ���.
	 * 
	 * ���跴���л�����Collection��List<MyBean>, ��ʹ��fromJson(String,JavaType)
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
	 * ����ת��ΪJSON�ַ���
	 * @param object
	 * @return
	 *//*
	public static String toJsonString(Object object){
		return JsonMapper.getInstance().toJson(object);
	}
	
	*//**
	 * JSON�ַ���ת��Ϊ����
	 * @param jsonString
	 * @param clazz
	 * @return
	 *//*
	public static Object fromJsonString(String jsonString, Class<?> clazz){
		return JsonMapper.getInstance().fromJson(jsonString, clazz);
	}
}*/



