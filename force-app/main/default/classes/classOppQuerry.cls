public with sharing class classOppQuerry {
 @AuraEnabled(cacheable=true)
 
    public static list<Opportunity> OppQuerry() {
        return [Select Id, Name, Amount, StageName 
        From Opportunity 
        Where StageName = 'Negotiation/Review' 
        Order by createdDate Desc 
        Limit 5];
    }
}