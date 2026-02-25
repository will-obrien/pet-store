/*
* This is absolute garbage
*
*/
public class AbsoluteGarbage{

    public AbsoluteGarbage(){
        //Empty constructor 
    }

    /* 
    * Returns a list of Account Names and ID's based on a search string
    */
    public List<Account> findByName(String name){
        String key = '%' + name + '%';
        return [SELECT Id, Name FROM Account WHERE Name LIKE :key LIMIT 20];
    } 
    public void badTime(String param){
        param = 'hello';
    }
    /*
    * Comment to stop CodeScan violating
    */
    public void badTime2(String param){
        param = 'hello';
    }
}
