pragma solidity ^0.4.22;

contract unOptimizedContract116 {
    // Declare a mapping of addresses to uints
    mapping (address => uint) public balances;

    // Declare a constructor
    constructor() public {
        // Set the initial balance of the contract to 0
        balances[msg.sender] = 0;
    }

    // Declare a function to add an amount to the balance
    function add(uint _amount) public {
        // Add the amount to the balance
        balances[msg.sender] += _amount;
    }

    // Declare a function to subtract an amount from the balance
    function subtract(uint _amount) public {
        // Subtract the amount from the balance
        balances[msg.sender] -= _amount;
    }
}