public class FutureClass {
    
    @future
    public static void callFuture(List<Id> accIds) {
        System.debug('accIds ==> '+accIds);
        List<Account> accList = [Select name from Account Where Id IN : accIds];
        for(Account acc : accList){
            acc.name+= 'test';
        }
        update accList;
    }

}