pragma solidity ^0.6.2;

// unOptimizedContract88

contract unOptimizedContract88 {
    address payable owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function sendFunds(address payable recipient, uint amount) public {
        require(msg.sender == owner, "Only owner can send funds");
        recipient.transfer(amount);
    }
}