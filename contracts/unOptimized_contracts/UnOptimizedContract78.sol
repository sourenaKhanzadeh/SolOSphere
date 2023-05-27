pragma solidity ^0.6.0;

contract unOptimizedContract78 {
    // Declare state variables
    address public owner;
    uint public balance;
    
    // Constructor
    constructor() public {
        owner = msg.sender;
        balance = 0;
    }
    
    // Fallback function
    receive() external payable {
        balance += msg.value;
    }
    
    // Withdraw function
    function withdraw() public {
        require(msg.sender == owner);
        msg.sender.transfer(balance);
        balance = 0;
    }
}