@isTest
public class NewClass {

  Integer newField;

  public NewClass(Integer value){
    newField = value;
  }

  private void unusedMethod(){}

  /*
  * This is fine.
  */
  public boolean isBadExample(){ 
    return true; 
  }
    
    public static List<Account> loadPropertyContactInfo(String accountId, String contactFieldName) {
        // updated to v1.2
        try{
            // updated to v1.1
            // String query = 'SELECT id,' + TTH_Utilities.sanitize(contactFieldName)  +' FROM Account WHERE id =: accountId LIMIT 1';
            String query = 'SELECT id,' + TTH_Utilities.sanitize(contactFieldName)  +' FROM Account WHERE id =\'' + TTH_Utilities.sanitize(accountId) + '\'  LIMIT 1';
            
            List<Account> sobjList = Database.query(query); // CodeScan shows error at this line
            
            return sobjList;
            
        } catch (Exception ex) {
            TTH_LoggerService.createLogRecord(ex, 'ISO', 'TTH_HomeFooterController', 'loadPropertyContactInfo', null, null,'Error');
            TTH_LoggerService.save();
            throw new AuraHandledException(ex.getMessage());
            // return null;
        }
    }

  
  private void incrementerTroubles() {
    for (Integer i = 0; i > 10; i++) {			
	    for (Integer k = 0; k < 20; i++) {		
	      system.debug('Hello');
	    }
	  }
  }

  void misplacedNull() {
    if ( a.equals(baz) && a != null ) {  
			incrementerTroubles();
	  }
  }

  public static void triggerBasicAuraHandledError() {
    try {
      integer a = 1 / 0; // Division by zero causes exception
    } catch (Exception e) {
        // "Convert" the exception into an AuraHandledException
      throw new AuraHandledException('THIS IS THE ERROR MESSAGE');
    }
  }
  
    @isTest static void onlyTest(){
        triggerBasicAuraHandledError();
  	}
  public void documentedEmptyMethod(){
    //This is empty for a reason...
  }
}
