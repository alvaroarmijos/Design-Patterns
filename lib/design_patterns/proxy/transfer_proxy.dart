class TransferProxy {
  static const MAX_TRANSFER_AMOUNT = 1000;
  static const MIN_TRANSFER_AMOUNT = 10;

  String checkTransfer(double amount) {
    //Here the Proxy evaluates all business rules

    if (amount > MAX_TRANSFER_AMOUNT) {
      return "The transaction exceeds the maximum amount.";
    } else if (amount < MIN_TRANSFER_AMOUNT) {
      return "The transaction must be greater than $MIN_TRANSFER_AMOUNT\$.";
    } else {
      //Here we can execute the function that does the transfer
      //Since the business rules are met
      _doTransfer(amount);
      return "Successful transaction.";
    }
  }

  void _doTransfer(double amount) {
    //In this method we can call another system to handle the transaction
    //With this, the proxy is responsible for giving us a level of security
    //And the system that makes the transfer has total security that the rules are met
  }
}
