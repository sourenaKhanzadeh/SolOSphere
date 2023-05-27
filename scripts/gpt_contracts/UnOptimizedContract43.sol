// unOptimizedContract43.sol
pragma solidity ^0.5.0;

contract unOptimizedContract43 {
    uint public balance;

    constructor() public {
        balance = 0;
    }

    function addBalance(uint _amount) public {
        balance += _amount;
    }

    function getBalance() public view returns (uint) {
        return balance;
    }
}