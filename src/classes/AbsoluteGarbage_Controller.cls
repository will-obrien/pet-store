/*
* This is absolute garbage
*/
public class AbsoluteGarbageController{

    public AbsoluteGarbage(Integer param, String param2){
        //Empty constructor  
        param2='Blahblahb lah';
        
    }
    /* 
    * Returns a list of Account Names and ID's based on a search string
    */
    public List<Account> findByName(String name){
        String key = '%' + name + '%';
        return [SELECT Id, Name FROM Account WHERE Name LIKE :key LIMIT 20 ];  
    } 
}