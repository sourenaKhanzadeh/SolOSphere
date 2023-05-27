pragma solidity ^0.6.0;

contract unOptimizedContract63 {
  uint public balance;

  function unOptimizedContract63() public {
    balance = 0;
  }

  function add(uint amount) public {
    balance += amount;
  }

  function subtract(uint amount) public {
    balance -= amount;
  }
}