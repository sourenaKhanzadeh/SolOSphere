pragma solidity ^0.6.0;

contract unOptimizedContract44 {
    address payable public owner;

    constructor() public {
        owner = msg.sender;
    }

    function transferFunds(address payable recipient, uint256 amount) public {
        require(msg.sender == owner, "Only owner can transfer funds.");
        recipient.transfer(amount);
    }
}