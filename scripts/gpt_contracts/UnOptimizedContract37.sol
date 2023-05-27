pragma solidity ^0.5.0;

contract unOptimizedContract37 {
    uint public balance;

    function unOptimizedContract37() public {
        balance = 0;
    }

    function deposit(uint amount) public {
        balance += amount;
    }

    function withdraw(uint amount) public {
        require(balance >= amount);
        balance -= amount;
    }
}