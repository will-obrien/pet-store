/*
* This is absolute garbage
*/

p ublic without sharing class AddBulkCLTProductsController{
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

}
