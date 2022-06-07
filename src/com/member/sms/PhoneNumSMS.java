package com.member.sms;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class PhoneNumSMS {
	public void sendSMS(String phoneNum, String code){

	    String api_key = "NCSXDCGPLMOHCTXM";
	    String api_secret = "QE2G9LQD0VVEUY44E4XSCQH4ABZGOIQC";
	    Message coolsms = new Message(api_key, api_secret);
	    
	    
	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", phoneNum);
	    params.put("from", "010-8526-7235");
	    params.put("type", "SMS");
	    params.put("text", "본인인증번호는 [" + code + "] 입니다. 정확히 입력해주세요.");
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	      JSONObject obj = (JSONObject) coolsms.send(params);
	      System.out.println(obj.toString());
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	    }
	}
}
