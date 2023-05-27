pragma solidity ^0.5.0;

contract unOptimizedContract41 {
    address payable owner;

    constructor() public {
        owner = msg.sender;
    }

    function () external payable {
        // Do nothing
    }

    function transferOwner(address payable newOwner) public {
        require(msg.sender == owner);
        owner = newOwner;
    }
}