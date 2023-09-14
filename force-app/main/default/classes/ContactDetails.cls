public class ContactDetails {

    //Display the Contacts based on AccountId the help of event in LWc
    @AuraEnabled(cacheable=true)
    public static List<Account> retrieveAccountRecords(){
        List<Account> accList = [Select Id, Name, Phone, Industry, Description From Account Where Phone != null limit 6];
        return accList;
    }


    @AuraEnabled(cacheable=true)
    public static List<Contact> retrieveContactRecords(string accId){
      System.debug('accId===>>'+accId);    
      List<Contact> conObj = new  List<Contact>();
      List<Contact> conList = [Select Id, Account.Name, FirstName, LastName, Email, Phone, AccountId From Contact Where AccountId=:accId];
      for(Contact con:conList){
        conObj.add(con);
      }
      System.debug('conObj===>>'+conObj);  
      return conObj;
    } 
    
}