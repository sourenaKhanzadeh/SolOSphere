pragma solidity ^0.6.0;

contract unOptimizedContract73 {
    
    // State Variables
    address public owner;
    uint public balance;

    // Constructor
    constructor() public {
        owner = msg.sender;
        balance = 0;
    }

    // Fallback function
    function() external payable {
        balance += msg.value;
    }

    // Transfer
    function transfer(address payable to, uint amount) public {
        require(amount > 0);
        require(balance >= amount);

        balance -= amount;
        to.transfer(amount);
    }
}