global class ContactBatch implements Database.Batchable<sobject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query='Select Id, Name, Fax, Description, MobilePhone, Email, Account.Name, Account.Fax, Account.Industry, Account.Rating, Account.Phone From Contact';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Contact> contactList){
      Integer size=contactList.size();
        for(Integer i=0; i<size; i++){
            Contact con=contactList.get(i);
            if(con.Fax==null || con.Fax==''){
                con.Fax=con.Account.Fax;
            }
            
            if(con.MobilePhone==null || con.MobilePhone==''){
                con.MobilePhone=con.Account.Phone;
            }
            con.Email='kprasanth632@gmail.com';
            con.Description= con.Account.Name+con.Account.Industry+Con.Account.Rating+con.Email;
        }
        update contactList;
            
       }
    global void finish(Database.BatchableContext bc){
        Messaging.SingleEmailMessage email=new Messaging.SingleEmailMessage();
        email.setSubject('Status of the batch class: contact batch');
        email.setSenderDisplayName('prasanth K');
        email.setHtmlBody('Dear user, Batch processed');
        List<String> emailTo= new List<String>();
        emailTo.add('prasanthkalluri93@gmail.com');
        
        email.setToAddresses(emailTo);
        
        Messaging.SingleEmailMessage[] emailList=new List<Messaging.SingleEmailMessage>();
        emailList.add(email);
        
        Messaging.sendEmail(emailList, false);
        
    }
    
}