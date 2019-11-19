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
}
