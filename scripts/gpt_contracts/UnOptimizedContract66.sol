pragma solidity ^0.5.0;

contract unOptimizedContract66 {
    address payable owner;

    constructor() public {
        owner = msg.sender;
    }

    function transfer(address payable recipient, uint256 amount) public {
        require(msg.sender == owner, "Only the owner can transfer funds");
        require(amount > 0, "Amount must be greater than zero");
        recipient.transfer(amount);
    }
}