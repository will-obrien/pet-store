/*
* This is absolute garbage
*/

public without sharing class AddBulkCLTProductsController{
public class AbsoluteGarbage{
//changing something so it's there 


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

}
