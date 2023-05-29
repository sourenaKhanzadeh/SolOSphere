pragma solidity ^0.5.0;

contract unOptimizedContract54 {
    uint public balance;

    constructor() public {
        balance = 0;
    }

    function addBalance(uint _amount) public {
        balance += _amount;
    }

    function subtractBalance(uint _amount) public {
        if (balance >= _amount) {
            balance -= _amount;
        }
    }

    function getBalance() public view returns (uint) {
        return balance;
    }
}