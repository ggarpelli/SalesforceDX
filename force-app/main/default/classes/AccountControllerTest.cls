@IsTest
public class AccountControllerTest {
    
    @IsTest
    public Static void insertAccountTest(){
        Account acc1 = new Account();
        AccountController.insertAccount(acc1); 
    }
    @IsTest
    public Static void insertAccountsTest(){
        List<Account> accounts = new List<Account>();
        AccountController.insertAccounts(accounts); 
    }
      @IsTest
    public Static void getAllAccountsTest(){
        AccountController.getAllAccounts(); 
    }  
    
}