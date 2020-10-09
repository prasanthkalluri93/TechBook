public class DMLAccountContact {
    public void insertion(){
        Account acc= new Account();
acc.Name = 'ApexHours';
insert acc;
 
Id accId=acc.Id;
List< Contact> lstCon=new List<Contact>();

Contact con1=new Contact();
con1.LastName='satish';
con1.AccountId= accId;

Contact con2=new Contact();
con2.LastName='Kumar';
con2.AccountId=accId;
lstCon.add(con1);
lstCon.add(con2);
Database.insert(lstCon,false);
    }
}