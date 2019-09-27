package com.utils;

public class SESEmail {
	public static void sendMail(String subject, String content, String toEmail) {
		
		
		try {
			SendEmail sendEmail = new SendEmail();
			MessageVo messageVo = new MessageVo();
			messageVo.setSubject(subject);
			messageVo.setContent(content);
			messageVo.setToMailAddress(toEmail);
			sendEmail.sendEmailBySmtp(messageVo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
