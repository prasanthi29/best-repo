trigger deleteacc on Account (before delete){
for (Account a : [SELECT Id FROM Account
                     WHERE Id IN (SELECT AccountId FROM Case) AND
                     Id IN :Trigger.old]) {
    Trigger.oldMap.get(a.id).addError('deleted');
}
}