package com.utils;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class SendEmail {
    public void sendEmailBySmtp(MessageVo emailSentRecord) throws Exception {
        Properties props = System.getProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.port", 587);
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        Session session = Session.getDefaultInstance(props);
        MimeMessage msg = new MimeMessage(session);
        String smtpUserName = "AKIA3FL426NOGDCRORCF"; // 带有权限的 AWS 帐号
        String smtpUserPassword = "BMXFM7NuXQHDBAFOv1R9OT2ozyto3JnNBR7JF34NlA9V"; // 带有权限的 AWS 密码
        msg.setFrom(new InternetAddress("SESUTSHelps@gmail.com")); // 发送的 email 帐号 
        msg.setRecipient(javax.mail.Message.RecipientType.TO, new InternetAddress(emailSentRecord.getToMailAddress()));
        msg.setSubject(emailSentRecord.getSubject());
        msg.setContent(emailSentRecord.getContent(), "text/html");
        Transport transport = session.getTransport();
        try {
            transport.connect("email-smtp." + "us-east-1" + ".amazonaws.com",
                    smtpUserName, smtpUserPassword);
            transport.sendMessage(msg, msg.getAllRecipients());
            //System.out.println("success post");
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new RuntimeException();
        } finally {
            transport.close();
        }
        //System.out.println("enter end");
    }
}