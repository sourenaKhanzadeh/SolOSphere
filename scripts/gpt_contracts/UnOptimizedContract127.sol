pragma solidity ^0.6.6;

contract unOptimizedContract127 {
    address payable public owner;

    constructor () public {
        owner = msg.sender;
    }

    function transferFunds (address payable _recipient, uint _amount) public payable {
        require(msg.sender == owner);
        _recipient.transfer(_amount);
    }
}