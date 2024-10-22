class BankAccount {
  final int accountId;
  final String accountOwner;
  double _balance;

 
  BankAccount(this.accountId, this.accountOwner, this._balance);


  BankAccount.savingsAccount(int accountId, String accountOwner, double initialBalance)
      : this(accountId, accountOwner, initialBalance);


  BankAccount.checkingAccount(int accountId, String accountOwner)
      : this(accountId, accountOwner, 0.0);


  double balance() {
    return _balance;
  }

 
  void withdraw(double amount) {
    if (amount > _balance) {
      throw Exception('Insufficient funds');
    }
    _balance -= amount;
  }

  
  void credit(double amount) {
    _balance += amount;
  }
}

class Bank {
  final String Name;
  final List<BankAccount> _accounts = [];


  Bank({required this.Name});

 
  BankAccount createAccount(int accountId, String accountOwner) {
    // Check for unique account ID
    for (var account in _accounts) {
      if (account.accountId == accountId) {
        throw Exception('Account ID already exists');
      }
    }

    // Create and add the account
    var newAccount = BankAccount(accountId, accountOwner, 0.0);
    _accounts.add(newAccount);
    return newAccount;
  }
}

void main() {
  // Creating a bank using named parameter
  Bank myBank = Bank(Name: "CAT Bank");
  BankAccount sakuraAccount = myBank.createAccount(70, 'Sakura');

  print("Balance: \$${sakuraAccount.balance()}"); 
  sakuraAccount.credit(70);
  print("Balance: \$${sakuraAccount.balance()}"); 
  sakuraAccount.withdraw(40);
  print("Balance: \$${sakuraAccount.balance()}"); 

  try {
    sakuraAccount.withdraw(50); 
  } catch (e) {
    print(e); 
  }

  try {
    myBank.createAccount(100, 'Jantha');
  } catch (e) {
    print(e); 
  }
}