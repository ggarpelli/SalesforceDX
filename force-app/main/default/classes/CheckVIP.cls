public class CheckVIP {

public static void isVIP(List<Id> listaId){
    List<Opportunity> attOpp = [SELECT Id, Profile__c, VIP_Profile__c  FROM Opportunity WHERE Id IN:listaId];
    List<Opportunity> attDML = new List<Opportunity>();
        
        for (Opportunity opp : attOpp) {
        if(opp.Profile__c == 'High'){
            opp.VIP_Profile__c=true;
        } else{
            opp.VIP_Profile__c=false;
        }
        attDML.add(opp);
    } update attDML;
}
}