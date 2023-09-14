trigger CheckFutureOnAccount on Account (after insert) {
    switch on Trigger.operationType{
        when AFTER_INSERT {
            List<Id> accList = new List<Id>();
            for(Account acc : trigger.new){
                accList.add(acc.Id);
            }
            FutureClass.callFuture(accList);
        }
    }
}