pragma solidity ^0.5.0;

contract unOptimizedContract129 {
    address payable owner;

    constructor() public {
        owner = msg.sender;
    }

    function transfer(address payable recipient, uint256 amount) public {
        require(amount > 0);
        require(msg.sender == owner);
        recipient.transfer(amount);
    }
}