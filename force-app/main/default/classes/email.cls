public class email {

    public void sendmail(String address,string body,string subject)
    {
        messaging.SingleEmailMessage mail= new messaging.SingleEmailMessage();
        string[]toAddress= new string []{Address};
        mail.settoaddresses(toaddress);
            mail.setSubject(subject);
        mail.setPlainTextBody(Body);
         
        Messaging.SendEmailResult[] results= Messaging.sendEmail(new Messaging.SingleEmailMessage [] {mail});
    }
}