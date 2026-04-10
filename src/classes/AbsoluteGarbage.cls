/*
* This is absolute garbage
* Adding for change check
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

    public List<Account> straightUpBadPractice(String[] names){
        if (names == null) {
            return new List<Account>();
        }

        Set<String> namesSet = new Set<String>();
        for (String name : names) {
            if (String.isNotBlank(name)) {
                namesSet.add(name);
            }
        }

        if (namesSet.isEmpty()) {
            return new List<Account>();
        }

        String searchConditions = '';
        for (String name : namesSet) {
            if (searchConditions != '') {
                searchConditions += ' OR ';
            }
            searchConditions += 'Name LIKE \'%' + String.escapeSingleQuotes(name) + '%\'';
        }

        String query = 'SELECT Id, Name FROM Account WHERE ' + searchConditions + ' LIMIT 20';
        return Database.query(query);
    }
}