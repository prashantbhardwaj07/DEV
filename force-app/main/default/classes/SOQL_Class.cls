public class SOQL_Class {
    
    public void getSoqlResults(){
        AggregateResult [] result = [SELECT StageName, Sum(Amount) totalAmount FROM Opportunity Group By StageName Having SUM(Amount) >3000];
        for(AggregateResult res : result){
            System.debug('AggregateResult : '+ res.get('StageName'));
            System.debug('AggregateResult : '+ res.get('totalAmount'));
       }
        
        String soqlQuery = 'Select Id, Name From Account';
		Map<Id, Account> accountMap = new Map<Id, Account>((List<Account>)Database.query(soqlQuery));
		System.debug('AccountMap-' + accountMap);
        //Select Name, Status, LeadSource From Lead Order By Name NULLS FIRST LIMIT 25

        //SELECT FIELDS(CUSTOM) FROM CONTACT LIMIT 200
        
        //SELECT FIELDS(STANDARD) FROM CONTACT LIMIT 200
        
        //SELECT FIELDS(ALL) FROM CONTACT LIMIT 200
    }

}