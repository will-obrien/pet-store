public without sharing class FLS_Repro_Simple {

    public static void testFieldRead(Id accountId) {

        // SOQL query with field access
        Account acc = [
            SELECT Id, Name
            FROM Account
            WHERE Id = :accountId
            LIMIT 1
        ];

        // Field dereference without FLS or object access check
        if (acc.Name != null) {
            System.debug(acc.Name);
        }
    }
}
