pragma solidity ^0.5.0;

contract unOptimizedContract82 {
  
  // Variables
  uint256 public balance;
  
  // Constructor
  constructor() public {
    balance = 0;
  }
  
  // Deposit function
  function deposit(uint256 _amount) public {
    balance += _amount;
  }
  
  // Withdraw function
  function withdraw(uint256 _amount) public {
    require(balance >= _amount, "Insufficient balance");
    balance -= _amount;
  }
  
  // Get balance
  function getBalance() public view returns (uint256) {
    return balance;
  }
  
}