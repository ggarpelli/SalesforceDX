public with sharing class AttProfileToOpp {
    
    public static void updateOpp(List<Id> listId){
        
        List<Opportunity> chamaOpp = [SELECT Id, Amount, Profile__c FROM Opportunity WHERE Id IN: listId];
        for (Opportunity opp : chamaOpp) {
            if (opp.Amount == null){
                opp.Profile__c = '';
            } else if(opp.Amount > 50000){
                opp.Profile__c = 'High';
            } else if(opp.Amount < 10000){
                opp.Profile__c = 'Low';
            } else {
                opp.Profile__c = 'Medium';
            }
        } update chamaOpp; 
    }
}